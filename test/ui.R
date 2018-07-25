library(shiny)



#fluidPage(
  
#  titlePanel("DELAY PENERBANGAN"),
#  sidebarLayout(
 #   sidebarPanel(
  #    selectInput("inState","Select Year",choices = origData$Year)
   # ),
    #
  #  mainPanel(
  #    tableOutput("Delaydata") 
  #  )
  #)
#)


library(shinydashboard)

Category <- data.frame(category=c("X..of.Delays.Carrier",
                                  "X..of.Delays.Late.Aircraft",
                                  "X..of.Delays.National.Aviation.System",
                                  "X..of.Delays.Security",
                                  "X..of.Delays.Weather",
                                  "Delayed"))
shinyUI(
  
  dashboardPage(
    dashboardHeader(),
    dashboardSidebar(
      selectInput("Airport","Select Airport",choices = unique(newdf$Name)),
      numericInput("Year","Select Year", value = 2003, min = 2003, max = 2017),
      selectInput("Category", "Select Category", choices = colnames(newdf)[1:6])
    ),
    dashboardBody(h3("Flight Delay")
                  ,plotOutput("delayPlot"))
  )
)