library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("FIFA WorldCup"),
        sidebarPanel(
                h2("Criteria"),
                textInput("team","Team:", value = ""),
                radioButtons("pos", "Position:", c("GoalKeeper" = "GK", "Defender" = "DF", "Mid-fielder" = "MF", "Forward" = "FW", "Any" = "ANY"), selected = "ANY"),
                radioButtons("cap", "Captain?", c("Yes" = "TRUE", "No" = "FALSE"), selected = "FALSE")
                ),
        mainPanel(
                h3("Players"),
                verbatimTextOutput("players")
        )
))