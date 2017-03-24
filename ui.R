# ui.R
library(shiny)

shinyUI(fluidPage(
  theme = "foundation.css",
  titlePanel(h1("Prediction of the next Word", align="center", style = "color:blue"),
             windowTitle = "Final Project @mmblanes"),
  h4("Final Project @mmblanes", align="center", style = "color:magenta"),
  hr(),
  fluidRow(
    column(12, offset=3,
        tabsetPanel(type = "tabs",
                    tabPanel("Prediction", 
                             "Type a ", span("english word", style="color:red"), "in the text box:",
                             textInput("phrase2", label = "", value = ""),
                             tags$head(tags$style(type="text/css", "#phrase2 {width: 450px;}")),
                             
                             fluidRow(
                               column(6,
                                    "Our prediction of the next word is:" , h3(textOutput("nextword2"), style = "color:green"),
                               column(12,
                                    h5(textOutput("stats2"), align="left"))
                               ))
                    ),        
                    tabPanel("About",
                             fluidRow(
                               column(6,
                                      includeMarkdown("./about.Rmd"))
                             )
                    )
                    
        )
    )
  ),
  hr(),
  p("Final Project Submission Coursera: @mmblanes", align="center")
  
))
