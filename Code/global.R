# This file can be accessed from any other file and 
# so the files are only loaded in once instead of loading
# in the server.
#

library(shiny)
library(XLConnect)
library(ggplot2)
wb <- loadWorkbook("WorldCupPlayerInfo.xlsx",create = F)
# sheet corresponds the sheet in the document
data = readWorksheet(wb,sheet = 1) 
data_prev = read.csv("prevWorldCup.csv")
data_fifa = readWorksheet(wb,sheet = 2)