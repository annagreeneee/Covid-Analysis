basicStatsConfirmed <- function(oddish){
  titles <- c("Mean", "Median","Variance", "Min", "Max")
  newDataFrame <- data.frame(1:5, rownames = titles)
  names(newDataFrame)[1] <- "Basic Statistics"
  newDataFrame[1] <- c(mean(oddish), median(oddish), var(oddish), min(oddish), max(oddish))
  newDataFrame
}
