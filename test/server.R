library(shiny)
library(ggplot2)
library(dplyr)


shinyServer(function(input,output){
  
      dat1 <- reactive({
      newdf %>% filter(Name==input$Airport)
      newdf %>% filter(Year==input$Year)
    })
    
  output$delayPlot <- renderPlot({
      category <- input$Category
      ggplot(newdf[newdf$Name==input$Airport & newdf$Year==input$Year,],
             aes_string(x="Month.Name",y=category)) + geom_bar(stat="identity") +
             xlab("Month") + ylab("Number of Delay")})
  
  #output$resultData<-renderText(result)
  
})
