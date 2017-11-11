library(shiny)
library(shinythemes)
library(datasets)

shinyUI(fluidPage(theme = shinytheme("lumen"),
  titlePanel("Telephones by Region"),
                  
  sidebarLayout(
  sidebarPanel(
                      
    # Select the Region
    selectInput("region", "What is the Region?", 
       choices = colnames(WorldPhones))),
                    
    # Output: Plot
    mainPanel(
      plotOutput("plot1")))
)
)