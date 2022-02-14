library(shiny)
library(fpp3)
data(tourism)
attach(tourism)

ui <- fluidPage(
  plotOutput("Region"),
  
  radioButtons(inputId = "Purpose", label = "What is the purpose of your visit?", c("All Plots" = "All Plots", "Business" = "Business",
                                                                                    "Holiday" = "Holiday", "Visiting" = "Visiting",
                                                                                    "Other" = "Other"))
)
server <- function(input, output, session) {
  
  output$Region <- renderPlot({
    if (input$Purpose == "Business") {
      PLOT <- filter(tourism, Region == "Alice Springs", Purpose == "Business")
      autoplot(PLOT)
    } else if (input$Purpose == "Holiday") {
      PLOT <- filter(tourism, Region == "Alice Springs", Purpose == "Holiday")
      autoplot(PLOT)
    } else if (input$Purpose == "Visiting") {
      PLOT <- filter(tourism, Region == "Alice Springs", Purpose == "Visiting")
      autoplot(PLOT)
    } else if (input$Purpose == "Other") {
      PLOT <- filter(tourism, Region == "Alice Springs", Purpose == "Other")
      autoplot(PLOT)
    } else if (input$Purpose == "All Plots")
      PLOT <- filter(tourism, Region == "Alice Springs")
    autoplot(PLOT)
  })
}

shinyApp(ui, server)