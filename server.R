
library(datasets)

server <- function(input, output) {
  
  # Create scatterplot object the plotOutput function is expecting
  output$plot1 = renderPlot({
    barplot(WorldPhones[,input$region],
         xlab = "Year", ylab = "Number of Telephones"
    )
  })
  
}
