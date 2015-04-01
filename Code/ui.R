# This file runs the shiny R User Interface

shinyUI(fluidPage(
    # The tabPanels control the tabs, plotOutput draws the plots
    # from the function.
    mainPanel(
      tabsetPanel(
        tabPanel("Goals against Caps", plotOutput("goalsAgainstCaps")),
        tabPanel("Occurances of Teams",plotOutput("teamOccurances")),
        tabPanel("Goals Per Game against Caps",plotOutput("Perfomance")),
        tabPanel("Height",plotOutput("Height"))
        
        )
    )
  )
)
