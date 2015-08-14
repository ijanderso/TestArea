complete <- function(directory, id = 1:332) {
        len <- length(id)
        obsvals <- numeric(len) 
        for(i in seq_along(id)){
                data<-read.csv(paste(directory,"/",str_pad(id[i],3,pad="0"),".csv",sep=""))
                obsvals[i]<-sum(complete.cases(data))
        }
        cases<-data.frame(id=id,nobs=obsvals)
        cases
}