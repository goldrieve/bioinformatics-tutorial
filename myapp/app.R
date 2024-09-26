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
      p("What is the Command-Line Interface. The CLI is a tool into which one can type commands to perform tasks. The user interface that accepts the typed responses and displays the data on the screen is called a shell: bash. An all-text display (most of the time your mouse doesn’t work)")
    )
  ),
  
  # Second page
  tabPanel(
    title = "CLI",
    fluidPage(
      h2("Command Line Access"),
      p("We will be running the majority of your analysis on the University remote computer, EDDIE. 
      Detailed information on how to access EDDIE can be found ",
      tags$a("here", href = "https://www.wiki.ed.ac.uk/pages/viewpage.action?spaceKey=ResearchServices&title=Eddie", target = "_blank")),
      tags$ul(
        tags$li("Ensure you have an active university account."),
        tags$li(
          "We will use visual studio code to connect to EDDIE, please follow the installation instructions ",
          tags$a("here", href = "https://code.visualstudio.com/")
        ),
        tags$li("Once this has been setup, please follow the following tutorial on ", 
          tags$a("CLI use", href = "https://ucdavis-bioinformatics-training.github.io/2023-September-Introduction-to-the-Command-Line-for-Bioinformatics/"))
      )
    )
  ),
  
  # Third page
  tabPanel(
    title = "Sequencing Tech",
    fluidPage(
      h2("Sequencing Technologies"),
      p("Check out this series of videos on sequencing technologies (video 7-18): ",
        tags$a("YouTube Playlist", href = "https://www.youtube.com/playlist?list=PLpPXw4zFa0uLMHwSZ7DMeLGjIUgo1IBbn", target = "_blank"))
    )
  ),

  # Third page
  tabPanel(
    title = "GH",
    fluidPage(
      h2("GitHub"),
      p("We will be using GitHub to store and share our code. Please follow the instructions on how to setup a GitHub account ",
        tags$a("and how to use it.", href = "https://github.com/skills/introduction-to-github?tab=readme-ov-file", target = "_blank"))
    )
  ),

  # Third page
  tabPanel(
    title = "Nextflow",
    fluidPage(
      h2("Nextflow"),
      p("We will be using GitHub to store and share our code. Please follow the instructions on how to setup a GitHub account ",
        tags$a("and how to use it.", href = "https://training.nextflow.io/", target = "_blank"))
    )
  ),
  
  # Fourth page
  tabPanel(
    title = "Reading",
    fluidPage(
      h2("Read these papers to get a better understanding of the protocols we will be using"),
      tags$a(
        "Rapid amplicon sequencing", 
        href = "https://www.nature.com/articles/s41596-022-00682-x", 
        target = "_blank"
      ),
      br(),
      tags$a(
        "Genomic surveillance of malaria", 
        href = "https://www.nature.com/articles/s41467-024-45688-z", 
        target = "_blank"
      ),
      br(),
      tags$a(
        "Mechanism of T. brucei outbreaks", 
        href = "https://www.biorxiv.org/content/10.1101/2024.07.12.603250v1", 
        target = "_blank"
      )
    )
  ),

  # Links menu
  navbarMenu(
    title = "MONO-TRAC",
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