# Load packages
library(shiny)

# Load and prepare data
#setwd("~/R/DevDataProd/")
data <- read.csv("FIFA2014.csv", header=TRUE)
col <- c("Team","Number","Position","Name","Captain","Liga")
dataClean <- data [,col]

shinyServer( function(input, output) {
        observe ({
                if (input$team == "") {
                        if (input$pos == "ANY"){
                                out <- dataClean[which((dataClean$Captain == input$cap)),col]
                        } else {
                                out <- dataClean[which((dataClean$Captain == input$cap) & (dataClean$Position == input$pos)),col]
                        }
                } else {
                        if (input$pos == "ANY"){
                                out <- dataClean[which((dataClean$Captain == input$cap) & (dataClean$Team == input$team)),col]
                        } else {
                                out <- dataClean[which((dataClean$Captain == input$cap) & (dataClean$Position == input$pos) & (dataClean$Team == input$team)),col]
                        }                
                }                
                x <- as.factor(out$Liga)
                output$ligaPlot <- renderPlot(plot(x, las=2, main="National leagues representation"))
                output$players <- renderPrint(out)
        })
})
