library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("NBA franchise draft picks by actual/projected - expected WS: 1990-2009"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
    selectInput("dataset", "Choose a team:", 
                choices = c("tenBest", "pressure", "cars"))
  ),
  
  # main panel
  mainPanel(
    
    tableOutput("view")
    
  )
))