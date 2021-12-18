library(shiny)

ui <- fluidPage(
  sliderInput("x", "If x is", value = 30, min = 1, max = 50),
  sliderInput("y", "and y is", value = 5, min = 1, max = 50),
  "ten x times 5 is",
  textOutput("product")
)
server <- function(input, output, session) {
  output$product <- renderText({
    input$x * input$y
  })
}
shinyApp(ui, server)
