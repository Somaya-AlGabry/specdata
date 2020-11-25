corr <- function(directory, threshold=0){
  list3 <- list.files(directory, full.names= TRUE)
  
  #create an empty vector: 
  vec <- vector(mode= "numeric", length = 0)
  
  for (i in 1:length(list3)) {
  #read data:
    y <-  read.csv(list3[i])
  #delete NAs: 
    y <- y[complete.cases(y),]
  
    #calculate completely observed cases:
    n <- nrow(y)
  # if greater than threshold:
       if (n > threshold){
      vec<-c(vec,cor(y$nitrate,y$sulfate))
     }
     
  }
  return(vec)
}

