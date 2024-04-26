library(shiny)

shinyUI(fluidPage(
  titlePanel("Interactive Linear Function Plot"),
  
  sidebarLayout(
    sidebarPanel(
      sliderInput("B", "Choose a value for the Budget of the firm:", min = 0, max = 10, value = 10), 
      sliderInput("p", "Choose a value for the price of the firm:", min = 0, max = 10, value = 2),
      sliderInput("c", "Choose a value for the cost of the firm:", min = 0, max = 10, value = 1)
    ),
    
    mainPanel(
      plotOutput("linearPlot")
    )
  )
))
