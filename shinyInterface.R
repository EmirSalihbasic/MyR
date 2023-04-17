# Load the shiny package
library(shiny)

# Define the UI
ui <- fluidPage(
  # Add a text input field
  textInput("name", "Enter your name: "),
  # Add a button to submit the form
  actionButton("submit", "Submit")
)

# Define the server
server <- function(input, output) {
  # Define a reactive expression to display a greeting
  greeting <- reactive({
    paste0("Hello, ", input$name, "!")
  })
  # Show the greeting when the user clicks the submit button
  observeEvent(input$submit, {
    showNotification(greeting(), duration = 5)
  })
}

# Run the app
shinyApp(ui, server)