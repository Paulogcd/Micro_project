library(shiny)

shinyServer(function(input, output) {
  
  output$linearPlot <- renderPlot({
    x <- seq(0, 20, by = 0.001)  # Define x values
    Profit <- (1 / (input$c)) * (sqrt((input$B)*((input$p)-(input$c))) - sqrt(x))^(2)
    
    plot(x, Profit, type = "l", col = "blue", lwd = 2,  # Plot the line
         xlab = "Pollution tax", ylab = "Profit ",
         main = paste("My plot"))
    
    abline(h = 0, v = 0, col = "gray", lty = 2)  # Add grid lines
  })
})
