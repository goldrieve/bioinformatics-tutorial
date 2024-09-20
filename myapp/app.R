# Bioinfromatics tutorial ----

library(shiny)
library(shinythemes)

# Define UI
ui <- navbarPage(
  title = "Bioinformatics tutorial",
  theme = shinytheme("flatly"), # Optional: Add a theme
  
  # First page
  tabPanel(
    title = "Page One",
    fluidPage(
      h2("Welcome to Page One"),
      p("This is the content of the first page.")
    )
  ),
  
  # Second page
  tabPanel(
    title = "Page Two",
    fluidPage(
      h2("Welcome to Page Two"),
      p("This is the content of the second page.")
    )
  ),
  
  # Third page
  tabPanel(
    title = "Page Three",
    fluidPage(
      h2("Welcome to Page Three"),
      p("This is the content of the third page.")
    )
  ),
  
  # Links menu
  navbarMenu(
    title = "Links",
    tabPanel(
      title = "Posit",
      tags$a("Posit", href = "https://posit.co", target = "_blank")
    ),
    tabPanel(
      title = "Shiny",
      tags$a("Shiny", href = "https://shiny.posit.co", target = "_blank")
    )
  )
)

# Define server logic
server <- function(input, output, session) {
  # Server logic (if any) goes here
}

# Run the application
shinyApp(ui = ui, server = server)
