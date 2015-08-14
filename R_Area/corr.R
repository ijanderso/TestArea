corr <- function(directory, threshold = 0) {
	id <- 1:10
    for(i in seq_along(id)){
        data<-read.csv(paste(directory,"/",str_pad(id[i],3,pad="0"),".csv",sep=""))
        gooddata<-data[complete.cases(data),]
        validdata<-gooddata[gooddata[["sulfate"]] > threshold & gooddata[["nitrate"]]>threshold,]
        if(dim(validdata)[1]!=0){
        	print(validdata)
        } else{
        	print("No good data for threshold")
        }
    }
}