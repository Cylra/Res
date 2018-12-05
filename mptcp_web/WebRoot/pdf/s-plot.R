source("plotter.R")

name <- "Results-hu-ude"
for(cmt in c("mptcp", "off")) {

data <- loadResults("passive.flow-ReceivedBitRate.data.bz2")

xAxisTicks <- seq(0,2048,128)
yAxisTicks <- 0:10

data <- subset(data, data$SndBufSize <= 4*1024*1024)   # !!!
data <- subset(data, data$CMT == cmt)

title <- "" # paste(sep="", levels(factor(data$FromNode)), " -> ", levels(factor(data$ToNode)))

xSet <- data$SndBufSize / 1024
xTitle <- "Send Buffer Size[KiB]"

ySet   <- data$passive.flow.ReceivedBitRate / 1000000
yTitle <- "Application Payload Throughput[Mbit/s]"


zSet   <- data$ToProvider
zTitle <- "To Provider{T}"
vSet   <- data$FromProvider
vTitle <- "From Provider{F}"
wSet   <- c()
wTitle <- ""

aSet <- data$CMT
aTitle <- "CMT{:Psi:}"
bSet <- data$FromNode
bTitle <- "Source"

pSet <- data$CC
pTitle <- "Congestion Control{:varphi:}"


dotSet <- 0:18
legendPos <- c(1,0.5)


pdf(paste(sep="", name, "-", cmt, ".pdf"), width=20, height=10, family="Helvetica", pointsize=22)
plotstd6(title,
         pTitle, aTitle, bTitle, xTitle, yTitle, zTitle,
         pSet, aSet, bSet, xSet, ySet, zSet,
         vSet, wSet, vTitle, wTitle,
         xAxisTicks=xAxisTicks,
         yAxisTicks=yAxisTicks,
         dotSet=dotSet,
         type="l",
         colorMode=cmColor,
         hideLegend=FALSE,
         legendPos=legendPos,
         pStart=0)
dev.off()

}
