
install.packages("shiny")
library(shiny)

install.packages('devtools')
library(devtools)

devtools::install_github('rstudio/shinyapps')
library(shinyapps)

install.packages(c('ggplot2', 'shiny'))
library(ggplot2)

runApp()

shinyapps::setAccountInfo(name="joejansen", token="B3FC0D17B0F62A0322616F93D890547B", secret="Kpj1EzeojKeh1fj9lOwA6TemPjTefo8zbhspCyuH")

tenBest <- read.csv("ten-best-picks.csv", header = TRUE, sep = ",")

deployApp()

