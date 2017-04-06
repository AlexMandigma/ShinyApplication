# server.R

library(quantmod)

shinyServer(function(input, output) {

  output$plot <- renderPlot({
    data <- getFX(input$symb, src = "yahoo", 
      from = input$dates[1],
      to = input$dates[2],
      auto.assign = FALSE)
                 
    chartSeries(data, theme = chartTheme("black"), 
      type = "line", log.scale = input$log, TA = NULL)
  })
  
})