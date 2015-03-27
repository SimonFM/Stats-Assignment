library(shiny)
setwd("E:/Google Drive/Classes/ST3009 - Statistical Analysis I/labs/Assignment")


shinyUI(fluidPage(
  
  titlePanel("title panel"),
  
  sidebarLayout(
    sidebarPanel( "sidebar panel"),
    mainPanel("main panel")
  )
  
))