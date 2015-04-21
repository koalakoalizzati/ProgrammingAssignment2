complete <- function(directory, id = 1:332){
                   nobs <- vector()
                   obj_id <- vector()
                   for (i in id){
                            if (i <= 9){ name <- paste0(directory,'/00',i,'.csv',collapse='')}
			    if (i >=100){ name <- paste0(directory,'/',i,'.csv',collapse='')}
			    if ((i > 9) & (i < 100)){name <- paste0(directory,'/0',i,'.csv',collapse='')}
		     	    file <- read.csv(name)
                            nobs <- c(length(file$sulfate[(!is.na(file$sulfate)) & (!is.na(file$nitrate))]),nobs)
                            obj_id <- c(i,obj_id)
}
	
obj_id<-rev(obj_id)
nobs<-rev(nobs)
df <- data.frame(obj_id,nobs)
print(df)
}
