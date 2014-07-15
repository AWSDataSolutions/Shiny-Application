library(shiny)
library(caret)

##flower <- function(sl,sw, pl,pw) sl + sw + pl + pw 
flower <- function(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width) 
  predict(modfit, cbind(Sepal.Length,Sepal.Width,Petal.Length,Petal.Width))

shinyServer(
  function(input, output) {
    output$OSepalLength <- renderPrint({input$ISepalLength})
    output$OSepalWidth <- renderPrint({input$ISepalWidth})
    output$OPetalLength <- renderPrint({input$IPetalLength})
    output$OPetalWidth <- renderPrint({input$IPetalWidth})
    output$prediction <- renderPrint({flower(input$ISepalLength,input$ISepalWidth,input$IPetalLength,input$IPetalWidth)})
  }
)
