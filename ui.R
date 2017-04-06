library(shiny)

shinyUI(fluidPage(
  titlePanel("Currency Exchange"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Select Historical currency pairs conversion. Curr1/Curr2"),
    
      textInput("symb", "Symbol", "USD/PHP"),
    
      dateRangeInput("dates", 
        "Date range",
        start = "2015-01-01", 
        end = as.character(Sys.Date())),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y axis on log scale", 
        value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
  )
))