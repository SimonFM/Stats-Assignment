
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(XLConnect)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    wb <- loadWorkbook("WorldCupPlayerInfo.xlsx",create = F)
    data = readWorksheet(wb,sheet = 1)
    
    barplot(table(data$League))
    
    #scatterplot(table(data$Club))
  })

})
