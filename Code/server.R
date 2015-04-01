# This file contains the code to run the Shiny Server

shinyServer(function(input, output) {
  
  # This function outputs the data for the number of goals 
  # a player has scored for their country (not just in the 
  # world cup).
  # It uses the standard ggplot scatterplot in order to represent
  # the data.
  # 
  # 
  output$goalsAgainstCaps <- renderPlot({
    ggplot(data_fifa, aes(Caps,IntGoals),colour="hotpink")+geom_point(shape=1)+geom_smooth(method=lm)
  },height = 500, width = 800)
  
  # This function outputs the data for the number of times a team has appeared in the  
  # I felt that a barplot was the best representation of the data as it
  # concisely repesents the data.
  #
  output$teamOccurances <- renderPlot({
    teamOccurances <- factor(data_prev$Team)
    data <- data.frame(teamOccurances)
    graph <- ggplot(data, aes(teamOccurances),colour="hotpink")
    graph + geom_bar(colour="hotpink") + coord_flip()
    },height = 800, width = 800 )
  
  # This function outputs the data for the the ratio of goals per game
  # for each player against the number of caps (games they've played for
  # their country).  
  # I felt it was interesting to see what the ratio to 
  output$Perfomance <- renderPlot({
    goalsPerGame <- data_fifa$IntGoals / data_fifa$Caps
    caps <- data_fifa$Caps
    dataframe <- data.frame(goalsPerGame,caps)
    ggplot(dataframe, aes(goalsPerGame,caps),colour=cond)+geom_point(shape=1)+geom_smooth(method=lm) 
  },height = 700, width =900)
  
  output$Height <- renderPlot({
    goalsPerGame <- data_fifa$IntGoals / data_fifa$Caps
    height <- data_fifa$Height
    dataframe <- data.frame(goalsPerGame,height)
    ggplot(dataframe, aes(goalsPerGame,height,colour = data_fifa$Country))+geom_point(shape=1) 
  },height = 700, width =900)
})
