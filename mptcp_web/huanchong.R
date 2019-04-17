source("plotter.R")

#R script传递文件夹名参数 
args<-commandArgs(T)
name <- args[1]

title <- paste(sep="", name)

data <- loadResults(paste(sep="", name, "/passive.flow-ReceivedBitRate.data.bz2"))

xSet <- data$SndBufSize / (1024*1024) #x轴数据集合
xTitle <- "Buffer Size[MiB]"

ySet <- data$passive.flow.ReceivedBitRate / (1024 * 1024)
yTitle <- "Application Payload Throughput[Mbit]"

zSet <- data$FromProvider
zTitle <- "From Provider{F}"
vSet <- data$ToProvider
vTitle <- "To Provider{T}"
wSet <- c()
wTitle <- ""

aSet <- data$CMT
aTitle <- "CMT{:Psi:}"
bSet <- data$FromSite
bTitle <- "Source"

pSet <- data$CC
pTitle <- "Congestion Control{:varphi:}"


#xAxisTicks <- getIntegerTicks(xSet , 1)   # Set to c() for automatic setting
xAxisTicks <- seq(0, 25 , 1)

yAxisTicks <- getIntegerTicks(ySet , 1)   # Set to c() for automatic setting
dotSet <- 0:18
legendPos <- c(1,1)


pdf(paste(sep="", name, ".pdf"), width=20, height=10, family="Helvetica", pointsize=22)
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
