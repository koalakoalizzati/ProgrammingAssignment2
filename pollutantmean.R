pollutantmean <- function(directory,pollutant,id= 1:332){
			values <- 0
	      	 	for (i in id){
		     	    if (i <= 9){ name <- paste0(directory,'/00',i,'.csv',collapse='')}
			    if (i >=100){ name <- paste0(directory,'/',i,'.csv',collapse='')}
			    if ((i > 9) & (i < 100)){name <- paste0(directory,'/0',i,'.csv',collapse='')}
		     	    file <- read.csv(name)
			    values <-c(file[pollutant][!is.na(file[pollutant])],values)}
			print(mean_value <- mean(values))}





