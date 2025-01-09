# Bioinfromatics tutorial ----

library(shiny)
library(shinythemes)

# Define UI
ui <- navbarPage(
  title = "Introduction to Bioinformatics",
  theme = shinytheme("flatly"), # Optional: Add a theme
  
  # First page
  tabPanel(
    title = "Introduction",
    fluidPage(
      h2("Here you can find links and resources you will need to complete this project."),
      p("Click through the tabs to get started.")
    )
  ),
  
  # Second page
  tabPanel(
    title = "CLI",
    fluidPage(
      h2("Command Line Access"),
      p("We will be using the command line interface (CLI) to run our analysis. Detailed information on how to access the CLI can be found",
      tags$a("here", href = "https://code.visualstudio.com", target = "_blank")),
      tags$ul(
        tags$li(
          "Once this has been setup, please follow the following tutorial on ",
          tags$a(
            "CLI use", 
            href = "https://ucdavis-bioinformatics-training.github.io/2023-September-Introduction-to-the-Command-Line-for-Bioinformatics/"
          )
        )
      )
    )
  ),

  tabPanel(
    title = "EDDIE",
    fluidPage(
      h2("EDDIE"),
      p("We will be running the majority of your analysis on the University remote computer, EDDIE. 
      Detailed information on how to access EDDIE can be found ",
      tags$a("here", href = "https://www.wiki.ed.ac.uk/pages/viewpage.action?spaceKey=ResearchServices&title=Eddie", target = "_blank")),
      tags$ul(
        tags$li("Ensure you have an active university account.")
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
      p("We will eventually be running the code via Nextflow. Please follow the instructions on how to setup Nextflow ",
        tags$a("(local installation)", href = "https://training.nextflow.io/envsetup/02_local/", target = "_blank"),
        " and an introductory course on",
        tags$a("Nextflow.", href = "https://training.nextflow.io/hello_nextflow/", target = "_blank"))
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