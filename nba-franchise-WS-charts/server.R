library(shiny)
library(datasets)

tenBest <- read.csv("ten-best-picks.csv", header = TRUE, sep = ",")
all <- read.csv("all-picks.csv", header = TRUE, sep = ",")
WAS <- subset(all, Tm == "WAS/WSB")
UTA <- subset(all, Tm == "UTA")
TOR <- subset(all, Tm == "TOR")
SEA-OKC <- subset(all, Tm == "SEA/OKC")
SAS <- subset(all, Tm == "SAS")
SAC <- subset(all, Tm == "SAC")
POR <- subset(all, Tm == "POR")
PHO <- subset(all, Tm == "PHO")
PHI <- subset(all, Tm == "PHI")





# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "PHI" = PHI,
           "WAS" = WAS,
           "PHO" = PHO)
  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = 90)
  })
  
  output$dataset <- renderText({
    input$dataset
  })
  
  
})