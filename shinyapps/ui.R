library(shiny)

# Define UI for the IRIS Flower Power Prediction Application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("IRIS Flower Power Classification Application"),
  
    sidebarPanel(
      numericInput('ISepalLength', 'Sepal Length  Min Value:4.3   Max Value:7.9', 4.3, min = 4.3, max = 7.9, step = 0.1),
      numericInput('ISepalWidth', 'Sepal Width  Min Value:2   Max Value:4.4', 2, min = 2, max = 4.4, step = 0.1),
      numericInput('IPetalLength', 'Petal Length  Min Value:1   Max Value:6.9', 1, min = 1, max = 6.9, step = 0.1),
      numericInput('IPetalWidth', 'Petal Width  Min Vlibrary(caretalue:0.1   Max Value:2.5', 0.1, min = 0.1, max = 2.5, step = 0.1),
      submitButton('Submit')
    ),
    mainPanel(
        h3('Results of our classification prediction'),
        h4('You entered'),
        h4('Sepal Length: '),
        verbatimTextOutput("OSepalLength"),
        h4('Sepal Width: '),
        verbatimTextOutput("OSepalWidth"),
        h4('Petal Length: '),
        verbatimTextOutput("OPetalLength"),
        h4('Petal Width: '),
        verbatimTextOutput("OPetalWidth"),
        h4('The IRIS flower closes to your inputs is: '),
        verbatimTextOutput("prediction")
    )
  )
)

