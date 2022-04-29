# Install packages

install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyverse")
install.packages("devtools")
library(dplyr)
library(ggplot2)
library(tidyverse)
library(devtools)

getwd()
setwd("C:/Users/annag/Desktop/R/RFinalProjectPackage")

# View the data

View(Europe_Covid)

# Summary of the data

summary(Europe_Covid)

#statistics (mean,median,variance,min,max) function for confirmed cases

basicStatsConfirmed <- function(oddish){
  titles <- c("Mean", "Median","Variance", "Min", "Max")
  newDataFrame <- data.frame(1:5, rownames = titles)
  names(newDataFrame)[1] <- "Basic Statistics"
  newDataFrame[1] <- c(mean(oddish), median(oddish), var(oddish), min(oddish), max(oddish))
  newDataFrame
}

basicStatsConfirmed(Europe_Covid$Confirmed)

#statistics (mean,median,variance,min,max) function for deaths

basicStatsDeaths <- function(temp){
  titles <- c("Mean", "Median", "Variance", "Min", "Max")
  newDataFrame <- data.frame(1:5, rownames = titles)
  names(newDataFrame)[1] <- "Basic Statistics"
  newDataFrame[1] <- c(mean(temp), median(temp), var(temp), min(temp), max(temp))
  newDataFrame
}

basicStatsDeaths(Europe_Covid$Deaths)

# function ggplot bar graph of confirmed in countries

mybarplotconfirmed <- function(barplot){
  ggplot(Europe_Covid, aes(x = Country.Region, y = Confirmed)) +
  geom_bar(stat = "identity",fill = "#3C963C") +
  coord_flip() +
  theme_bw() +
  labs(x = "Country",
       y = "Confirmed",
       title = "Confirmed Cases in European Countries")
}

mybarplotconfirmed(Europe_Covid$Confirmed)

# function ggplot bar graph of deaths in countries

mybarplotdeaths <- function(barplot2){
  ggplot(Europe_Covid, aes(x = Country.Region, y = Deaths)) +
    geom_bar(stat = "identity",fill = "#3C963C") +
    coord_flip() +
    theme_bw() +
    labs(x = "Country",
         y = "Deaths",
         title = "Deaths of Confirmed Cases in European Countries")
}

mybarplotdeaths(Europe_Covid$Deaths)

  # Division of comfirmed and death to result in a 6% death rate

xysteps <- function(x,y){

  (x/y)

}

xysteps(x = 3770.429, y = 58920.05)

