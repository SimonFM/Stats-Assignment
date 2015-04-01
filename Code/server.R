#

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({
    ggplot(data_fifa, aes(Caps,IntGoals),colour="hotpink")+geom_point(shape=1)+geom_smooth(method=lm)
  },height = 500, width = 800)
  
  output$teamOccurances <- renderPlot({
    teamOccurances <- factor(data_prev$Team)
    data <- data.frame(teamOccurances)
    graph <- ggplot(data, aes(teamOccurances),colour="hotpink")
     graph + geom_bar(colour="hotpink") + coord_flip()
#     graph + geom_density()
    },height = 800, width = 800 )
  
  output$Perfomance <- renderPlot({
    goalsPerGame <- data_fifa$IntGoals / data_fifa$Caps
    caps <- data_fifa$Caps
    dataframe <- data.frame(goalsPerGame,caps)
#     ggplot(dataframe, aes(goalsPerGame,caps),colour=cond)+geom_point(shape=1)+geom_smooth(method=lm) 
  },height = 700, width =900)
  
#  output$MostClub <- renderPlot({
#    caps <- data_fifa$Club
#    dataframe <- data.frame(caps)
#    ggplot(dataframe, aes(caps),colour=cond)+geom_bar()+ coord_flip()
#  },height = 800, width =500)
})
