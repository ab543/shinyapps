library(shiny)

# Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("1990-2009 NBA draft picks by actual/projected - expected WS"),
  
  # Sidebar with controls to select a dataset and specify the number
  
  sidebarPanel(
    selectInput("dataset", "Choose a team or list:", 
                choices = c("50 best picks","50 worst picks","ATL","BOS", "CHA", "CHH/NOK", "CHI", "CLE", "DAL", "DEN", "DET", "GSW", "HOU", "IND", "LAC", "LAL", "MEM/VAN", "MIA", "MIL", "MIN", "NJN", "NOH", "NYK", "PHI", "PHO", "POR", "SAC", "SAS", "SEA/OKC", "TOR", "UTA", "WAS"))
  ),
  
  # main panel
  mainPanel(
    h3(textOutput("dataset")), 
    p("Sorted by WS Delta descending"), 
    p(a("You can read the full post about this data set here", href="http://www.joejansen.co/blog/2013/12/15/which-nba-franchise-drafted-best-from-1990-2009", target="_blank")),
    tableOutput("view")
    
  )
))