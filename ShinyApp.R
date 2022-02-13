library(shiny)

ui <- fluidPage(
  selectInput(inputId= "S",
              label= "Time Series Autoplot"),
    plotOutput("autoplot")
)

server <- function(input, output, session) {
 output$autoplot <- renderPlot({autoplot(rnorm(input$S)})
}

shinyApp(ui= ui , server= server)


#------ part three 
#install.packages("fpp3")
#library(fpp3)
#data("tourism")
#S = subset(tourism, Region=="Adelaide")
#autoplot(S)
