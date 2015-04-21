corr <- function(directory, threshold = 0) {
     			    x <- vector(mode="numeric", length=0)
			    correlation <- vector(mode="numeric", length=0)
     			    for (i in 1:332){
		     	    	if (i <= 9){ name <- paste0(directory,'/00',i,'.csv',collapse='')}
			    	if (i >=100){ name <- paste0(directory,'/',i,'.csv',collapse='')}
			    	if ((i > 9) & (i < 100)){name <- paste0(directory,'/0',i,'.csv',collapse='')}
		     	    	file <- read.csv(name)
				if (length(file$sulfate[(!is.na(file$sulfate)) & (!is.na(file$nitrate))]) > threshold){
				   sulf <-c(file$sulfate[(!is.na(file$sulfate)) & (!is.na(file$nitrate))])
				   nitr <-c(file$nitrate[(!is.na(file$sulfate)) & (!is.na(file$nitrate))]) 
			    	   correlation <- c(cor(sulf,nitr),correlation)}}
			    	   xx<-rev(correlation)
				   print(xx)}