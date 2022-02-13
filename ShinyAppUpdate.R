library(shiny)


ui <- fluidPage(
  
  selectInput(inputId= "Selected_Region",
              label= "Region" ,
              choices = "Alice Springs" ),
  plotOutput("autoplot")
)

server <- function(input, output, session) {
  
  output$autoplot <- renderPlot({
    RegionSelect <- subset(tourism, Region == input$selected_region)
    autoplot(RegionSelect)
  })
  
}

shinyApp(ui= ui , server= server)