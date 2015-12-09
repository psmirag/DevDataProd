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
                h5("You can use this simple app to find any player that participated in the 2014 FIFA World Cup. Three Search parameters can be used:

                   - Team name (eg. Argentina). Default = all
                   - Position (eg. GoalKeeper). Default = any
                   - Captain (each team has only one captain). Default = No
                   
                   Parameters can be combined to create different criteria"),
                verbatimTextOutput("players")
        )
))