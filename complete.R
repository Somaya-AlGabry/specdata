complete <- function(directory, id = 1:332){
  list2 <- list.files(directory, full.names = TRUE, pattern = "csv")
  #create an empty data frame:
  dat2 <- data.frame()
  
  for (i in id){
    x <- read.csv(list2[i])
    x <- na.omit(x)
    dat2 <- rbind(dat2, data.frame(i, nrow(x)))
  }
  return(dat2)
}

