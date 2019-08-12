library(shiny)
library(shinyWidgets)
shinyUI(fluidPage(

  # Application title
  titlePanel(h1(strong("lbs to kgs Converter"),align = "center")),
  br(),
  # Sidebar with a slider input for mass input
  sidebarLayout(
    sidebarPanel(
      setSliderColor("cornflowerblue",1),
       sliderInput("Mass",
                   label = h4("What is the value, in pounds, you want to convert to kg (0 - 500)?"),
                   min = 0,
                   max = 500,
                   value = 0),
       actionButton("Run", label = "See my converter Result") 
    ),

      mainPanel(
        h3("Result:"),
        h5("(Don't forget to click the bottom left button to get the accurate result)."),
        br(),
        htmlOutput("conversionR")
      ) 
  )
))

