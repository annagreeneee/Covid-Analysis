basicStatsDeaths <- function(temp){
  titles <- c("Mean", "Median", "Variance", "Min", "Max")
  newDataFrame <- data.frame(1:5, rownames = titles)
  names(newDataFrame)[1] <- "Basic Statistics"
  newDataFrame[1] <- c(mean(temp), median(temp), var(temp), min(temp), max(temp))
  newDataFrame
}
