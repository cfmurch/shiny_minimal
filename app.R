library(shiny)

ui <- fluidPage(
  titlePanel("Hello from minimal Shiny"),
  textOutput("msg")
)

server <- function(input, output) {
  output$msg <- renderText("This is a minimal Shiny app.")
}

shinyApp(ui, server)
