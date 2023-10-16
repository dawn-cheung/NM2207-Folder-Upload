library(shiny)

# Define UI for displaying current time ----
ui <- fluidPage(
  
  h2(textOutput("currentTime"))
  
)

# Define server logic to show current time, update every second ----
server <- function(input, output, session) {
  
  output$currentTime <- renderText({
    invalidateLater(1000, session)
    paste("The current time IN BRISTOL is", POSIXct(Sys.time(), "GMT-1"))
  })
  
}

# Create Shiny app ----
shinyApp(ui, server)