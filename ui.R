
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("MPG Predictor for Modified Mazda Rx4 Race Car"),
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
    sliderInput("hp",
                "Power (HP):",
                min = 50,
                max = 250,
                value = 100),

  sliderInput("wt",
              "Weight (lb):",
              min = 1000,
              max = 5000,
              value = 2500),
  submitButton('Submit')
  
 ),
  
  # Show a plot of the generated distribution
  mainPanel(
    h3('Results of prediction'),
    verbatimTextOutput("prediction")
  )
)
)

