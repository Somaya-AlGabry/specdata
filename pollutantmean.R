
pollutantmean <- function(directory, pollutant, id= 1:332) {
  #Step1: Read the data:
  list1 <- list.files(directory , full.names = TRUE, pattern = "csv")
  #create an empty data frame:
  dat <- data.frame()
  #Step2: specify the wanted id:
  for (i in id){
    loc <- read.csv(list1[i])
    #bind it to the data frame:
    dat <- rbind(dat, loc)
    
  }
  #Step3: Calculating the means ignoring the missing values:
  pmean <- mean(dat[, pollutant], na.rm = TRUE)
  pmean
}

