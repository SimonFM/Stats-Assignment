
library(shiny)
library(XLConnect)
library(ggplot2)
wb <- loadWorkbook("WorldCupPlayerInfo.xlsx",create = F)
data = readWorksheet(wb,sheet = 1)
data_prev = read.csv("prevWorldCup.csv")
data_fifa = readWorksheet(wb,sheet = 2)