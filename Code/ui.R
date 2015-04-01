shinyUI(fluidPage(
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        tabPanel("Goals vs Caps", plotOutput("distPlot")),
        tabPanel("Occurances of Teams",plotOutput("teamOccurances")),
        tabPanel("Goals Per Game / Caps",plotOutput("Perfomance"))
#         tabPanel("Most Popular Teams", plotOutput("MostClub"))
      )
    )
  )
)
