# Bioinfromatics tutorial ----

library(shiny)
library(shinythemes)

# Define UI
ui <- navbarPage(
  title = "Bioinformatics tutorial",
  theme = shinytheme("flatly"), # Optional: Add a theme
  
  # First page
  tabPanel(
    title = "Introduction",
    fluidPage(
      h2("Welcome to the Bioinformatics tutorial"),
      p("What is the Command-Line Interface
      The CLI is a tool into which one can type commands to perform tasks.
    The user interface that accepts the typed responses and displays the data on the screen is called a shell: bash. 
    An all-text display (most of the time your mouse doesn’t work)")
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
