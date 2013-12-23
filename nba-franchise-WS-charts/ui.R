library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("1990-2009 NBA draft picks by actual/projected - expected WS"),
  
  # Sidebar with controls to select a dataset and specify the number
  
  sidebarPanel(
    selectInput("dataset", "Choose a team or list:", 
                choices = c("PHI", "WAS", "PHO"))
  ),
  
  # main panel
  mainPanel(
    h3(textOutput("dataset")), 
    tableOutput("view")
    
  )
))