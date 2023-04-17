
# Load the shiny package
library(shiny)

# Define the UI
ui <- fluidPage(
  # Add an input field for the initial investment
  numericInput("initial_investment", "Initial Investment", value = 0, min = 0),
  # Add an input field for the cash flows
  textInput("cash_flows", "Cash Flows", value = ""),
  # Add an input field for the discount rate
  numericInput("discount_rate", "Discount Rate", value = 0, min = 0, max = 1),
  # Add a button to calculate the NPV
  actionButton("calculate_npv", "Calculate NPV"),
  # Add a placeholder for the output
  verbatimTextOutput("npv_result")
)

# Define the server
server <- function(input, output) {
  # Define a reactive expression for the cash flows vector
  cash_flows_vec <- reactive({
    as.numeric(strsplit(input$cash_flows, ",")[[1]])
  })
  # Define a reactive expression for the NPV
  npv <- reactive({
    input$initial_investment + sum(cash_flows_vec() / (1 + input$discount_rate)^(1:length(cash_flows_vec())))
  })
  # Show the NPV when the user clicks the button
  observeEvent(input$calculate_npv, {
    output$npv_result <- renderPrint(npv())
  })
}

# Run the app
shinyApp(ui, server)