#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyWidgets)
shinyServer(function(input, output){

# Initialize reactive values
  values <- reactiveValues()
  observe({
    input$Run
    values$kg <- isolate({
      input$Mass*0.4536
    })
    values$m <- isolate({
      input$Mass
    })
  })
  
#output
  output$conversionR <- renderText({
    if(input$Mass == 0) paste("The conversion result of", strong("0 lb"), "is",strong("0"),"kg.")
    else
      paste(
            "The conversion result of",
            strong(values$m),
            strong("lb"),
            "is: ",
            strong(values$kg),
            "kgs"
            )
  })
})



