library(shiny)

ui <- fluidPage(
  textInput("testPlaceHlder", NULL, placeholder = "Your name"),
  sliderInput("testSliderDate", "When should we deliver?",
              min = as.Date("2020-09-16"), max = as.Date("2020-09-23"),
              value = as.Date("2020-09-17")),
  sliderInput("testSliderInterval", "Slider with animation", 
              min = 0, max = 100, value = 0, step = 5,
              animate = TRUE),
  selectInput("testList", "Make a choice",
              choices = list("group 1" = letters[1:4],
                             "group 2" = letters[5:6],
                             "group 3" = letters[7:8]))
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
