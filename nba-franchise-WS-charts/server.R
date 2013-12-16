library(shiny)
library(datasets)

tenBest <- read.csv("ten-best-picks.csv", header = TRUE, sep = ",")

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "tenBest" = tenBest,
           "pressure" = pressure,
           "cars" = cars)
  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = 90)
  })
  
  
})