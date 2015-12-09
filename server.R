# Load packages
library(shiny)

# Load and prepare data
#setwd("~/R/DevDataProd/")
data <- read.csv("FIFA2014.csv", header=TRUE)
dataClean <- data [,c("Team","Number","Position","Name","Captain")]

shinyServer( function(input, output) {
        observe ({
                if (input$team == "") {
                        if (input$pos == "ANY"){
                                output$players <- renderPrint(dataClean[which((dataClean$Captain == input$cap)),])
                        } else {
                                output$players <- renderPrint(dataClean[which((dataClean$Captain == input$cap) & (dataClean$Position == input$pos)),])
                        }
                } else {
                        if (input$pos == "ANY"){
                                output$players <- renderPrint(dataClean[which((dataClean$Captain == input$cap) & (dataClean$Team == input$team)),],)
                        } else {
                                output$players <- renderPrint(dataClean[which((dataClean$Captain == input$cap) & (dataClean$Position == input$pos) & (dataClean$Team == input$team)),])
                        }                }                
        })
})
