# Plot vector results
# Copyright (C) 2016 by Thomas Dreibholz
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Contact: dreibh@simula.no

library(ggplot2)
library(Hmisc)

source("plotter.R")

#R script传递文件夹名参数 
args<-commandArgs(T)
name <- args[1]

allResults <- loadResults(paste(sep="", name, "/passive.flow-ReceivedBitRate.data.bz2"))


# Specification of the sorting orders:
# allResults$PathMgr <- factor(allResults$PathMgr,
#                          levels=c("ndiffports", "fullmesh", "default", "binder"))
# allResults$CC      <- factor(allResults$CC,
#                          levels=c("reno", "cubic", "hybla",
#                                   "lia", "olia", "balia", "wvegas"))

allResults$PathMgrCC <- paste(sep="", allResults$PathMgr, " / ", allResults$CC)
allResults$PathMgrCC <- factor(allResults$PathMgrCC, levels=c(
                               "ndiffports / cubic",
                               "ndiffports / reno",
                               "ndiffports / hybla",
                               "ndiffports / veno",
                               "fullmesh / cubic",
                               "fullmesh / reno",
                               "fullmesh / hybla",
                               "fullmesh / veno",
                               "default / cubic",
                               "default / reno",
                               "default / hybla",
                               "default / veno",
                               "binder / cubic",
                               "binder / reno",
                               "binder / hybla",
                               "binder / veno"))

                        
# Colours:
# colorsFiber <- c("orange","salmon")
# colorsADSL  <- c("green","forest green","royal blue","blue")
plotColours <- topo.colors(9)
# c("royal blue", "blue",
#                  "orange","salmon", "red", "black", "gray")


pdf(paste(sep="", name, ".pdf"), width=20, height=10, family="Helvetica", pointsize=22)

for(cmt in levels(factor(allResults$CMT))) {
   for(ip in levels(factor(allResults$IPVersion))){
      allResultsSubset <- subset(allResults, (allResults$CMT == cmt) & (allResults$IPVersion == ip))

      numberOfRuns <- length(levels(factor(allResultsSubset$TimeStamp)))
      title <- paste(sep="", levels(factor(allResults$FromSite)), " -> ", levels(factor(allResults$ToSite)),
                  ", CMT=", cmt,",IPVersion=", ip, " (", numberOfRuns , " runs)")

      pSet   <- allResultsSubset$PathMgrCC
      pTitle <- "Path Manager"

      xTitle <- "Path Manager / Congestion Control"
   
      ySet   <- allResultsSubset$passive.flow.ReceivedBitRate/(1024*1024)
      yTitle <- "Application Payload Throughput[Mbit/s]"

      zSet   <- sprintf("%s-%s",allResultsSubset$FromProvider,allResultsSubset$ToProvider)
      zTitle <- ""

      hset<-data.frame(PathMgrCC=pSet, ReceivedBitRate=ySet, Path=zSet)

      p <- ggplot(hset,
                  aes(x=PathMgrCC,y=ReceivedBitRate,fill=PathMgrCC)) +
                  scale_fill_manual(values = plotColours)
      p <- p + labs(title=title,
                    fill=zTitle,
                    x=xTitle,
                    y=yTitle)
   # Theme (see http://docs.ggplot2.org/0.9.2.1/theme.html for options):
      p <- p + theme(title           = element_text(size=16),
                     axis.title      = element_text(size=16),
                     strip.text      = element_text(size=16, face="bold"),
                     axis.text.x     = element_text(size=14, angle=90, face="bold", colour="black"),
                     axis.text.y     = element_text(size=14, angle=90, hjust=0.5, colour="black"),
                     legend.title         = element_blank(),
                     #legend.position      = c(1,1),
                     #legend.justification = c(1,1),
                     legend.background    = element_rect(colour = "blue",  fill = "#ffffff", size=1)
                    )
      p <- p + facet_grid(~Path) + 
               stat_summary(fun.y=mean, geom='bar', size=3)
   
   # Add confidence intervals:
   # NOTE: Needs at least 2 (*two*) runs to work!
      if(numberOfRuns >= 2) {
         p <- p + stat_summary(fun.data=mean_cl_boot, geom='pointrange', colour="red")
      }

   # All values as text:
   # p <- p + geom_text(aes(label=sprintf("%1.1f", ReceivedBitRate)),
   #                    vjust=1.5,colour='blue',position=position_dodge(.9),size=6)
   # Only mean value as text:
      p <- p + stat_summary(aes(label=round(..y..,1)), fun.y=mean, geom="text",
                            colour='blue', size=5, vjust = -0.5)
             
      print(p)

}
}

dev.off()


