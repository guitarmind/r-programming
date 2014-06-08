# source("C:/Users/Mark Peng/Desktop/Coursera/R Programming/Assignments/Assignment1/pollutantmean.R")
# pollutantmean("C:/Users/Mark Peng/Desktop/Coursera/R Programming/Assignments/Assignment1/specdata", "sulfate", 1:5)

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  #   files_list <- dir(directory, full.names = TRUE)
  #   print(files_list)
  #   read.csv(paste(directory, files_list, sep=""), header=TRUE)
  
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  for(i in seq_along(id)){
    
    filepath <- NA
    
    if(i <= 9) {
      filepath <- paste(directory, "/00", i, ".csv", sep = "")
    } else if(i > 9 && i <= 99) {
      filepath <- paste(directory, "/0", i, ".csv", sep = "")
    } else if(i > 99) {
      filepath <- paste(directory, "/", i, ".csv", sep = "")
    }
    
    #print(filepath)
    
    #       data <- read.table(filepath)
    data <- read.csv(filepath, header=TRUE)
    print(data)
  }  
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  
}