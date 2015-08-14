library(stringr)
pollutantmean <- function(directory, pollutant, id = 1:332) {
        len <- length(id)
        sums<-0
        lengths<-0
        for(i in id){
                data<-read.csv(paste(directory,"/",str_pad(i,3,pad="0"),".csv",sep=""))
                gooddata <- data[!is.na(data[[pollutant]]),]
                sums<-sums+sum(gooddata[[pollutant]])
                lengths<-lengths+length(gooddata[[pollutant]])
        }
        sums/lengths
}