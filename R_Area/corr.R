library(stringr)
corr <- function(directory, threshold = 0) {
	id <- 1:332
	totalcors<-numeric()
    for(i in seq_along(id)){
        data<-read.csv(paste(directory,"/",str_pad(id[i],3,pad="0"),".csv",sep=""))
        good<-complete.cases(data)
        gooddata<-data[good,]
        if(sum(good)>threshold){
        	cr<-cor(gooddata[["sulfate"]],gooddata[["nitrate"]])
        	totalcors<-c(totalcors,cr)
        }
    }
    totalcors
}