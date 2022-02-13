library(shiny)
library(fpp3)
data("tourism")
ui <- fluidPage(
  
  
  plotOutput("Regions")
)

server <- function(input, output, session) {
  
  output$Regions <- renderPlot({
    PLOT <- filter(tourism, Region == "Alice Springs")
    autoplot(PLOT)}, res = 96)
  
  
}

shinyApp(ui, server)
shinyApp(ui= ui , server= server)