library(shiny)

fiftyBest <- read.csv("fifty-best.csv", header = TRUE, sep = ",")
fiftyWorst <- read.csv("fifty-worst.csv", header = TRUE, sep = ",")

all <- read.csv("all-picks.csv", header = TRUE, sep = ",")

WAS <- subset(all, Tm == "WAS/WSB")
UTA <- subset(all, Tm == "UTA")
TOR <- subset(all, Tm == "TOR")
SEAandOKC <- subset(all, Tm == "SEA/OKC")
SAS <- subset(all, Tm == "SAS")
SAC <- subset(all, Tm == "SAC")
POR <- subset(all, Tm == "POR")
PHO <- subset(all, Tm == "PHO")
PHI <- subset(all, Tm == "PHI")
ORL <- subset(all, Tm == "ORL")
NYK <- subset(all, Tm == "NYK")
NOH <- subset(all, Tm == "NOH")
NJN <- subset(all, Tm == "NJN")
MIN <- subset(all, Tm == "MIN")
MIL <- subset(all, Tm == "MIL")
MIA <- subset(all, Tm == "MIA")
MEMandVAN <- subset(all, Tm == "MEM/VAN")
LAL <- subset(all, Tm == "LAL")
LAC <- subset(all, Tm == "LAC")
IND <- subset(all, Tm == "IND")
HOU <- subset(all, Tm == "HOU")
GSW <- subset(all, Tm == "GSW")
DET <- subset(all, Tm == "DET")
DEN <- subset(all, Tm == "DEN")
DAL <- subset(all, Tm == "DAL")
CLE <- subset(all, Tm == "CLE")
CHI <- subset(all, Tm == "CHI")
CHHandNOK <- subset(all, Tm == "CHH/NOK")
CHA <- subset(all, Tm == "CHA")
BOS <- subset(all, Tm == "BOS")
ATL <- subset(all, Tm == "ATL")

# Define server logic required to summarize and view the selected dataset
shinyServer(function(input, output) {
  
  # Return the requested dataset
  datasetInput <- reactive({
    switch(input$dataset,
           "50 best picks" = fiftyBest,
           "50 worst picks" = fiftyWorst,
           "ATL" = ATL,
           "BOS" = BOS,
           "CHA" = CHA,
           "CHH/NOK" = CHHandNOK,
           "CHI" = CHI,
           "CLE" = CLE,
           "DAL" = DAL,
           "DEN" = DEN,
           "DET" = DET,
           "GSW" = GSW,
           "HOU" = HOU,
           "IND" = IND,
           "LAC" = LAC,
           "LAL" = LAL,
           "MEM/VAN" = MEMandVAN,
           "MIA" = MIA,
           "MIL" = MIL,
           "MIN" = MIN,
           "NJN" = NJN,
           "NOH" = NOH,
           "NYK" = NYK,
           "PHI" = PHI,
           "PHO" = PHO,
           "POR" = POR,
           "SAC" = SAC,
           "SAS" = SAS,
           "SEA/OKC" = SEAandOKC,
           "TOR" = TOR,
           "UTA" = UTA,
           "WAS" = WAS
           )
  })
  
  # Show the first "n" observations
  output$view <- renderTable({
    head(datasetInput(), n = 90)
  })
  
  output$dataset <- renderText({
    input$dataset
  })
  
  
})