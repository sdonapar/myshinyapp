library(shiny)
source("helpers.R")

shinyServer(function(input,output) {
        output$text1 <- renderText({
                paste("Milage of your car",input$carname,"is", 
                predict_milage(input$cyl,input$hp,input$weight,input$am),
                "miles/(US) gallon")
        })
})