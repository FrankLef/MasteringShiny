library(shiny)

ui <- fluidPage(
  textOutput("greeting"),
  textInput("name", "What's your name?", value = NA),
  numericInput("age", "How old are you", value = NA)
)
server <- function(input, output, session) {
  output$greeting <- renderText({
    paste("Hello", input$name)
  })
}
shinyApp(ui, server)
