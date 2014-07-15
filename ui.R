library(shiny)

# Define UI for the IRIS Flower Power Prediction Application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("IRIS Flower Classification Prediction Application"),
  
    # The user is able to manipulate the 4 Input parameters and then presses
    # the Submit button to find out the type of predicted IRIS flower. 
    sidebarPanel(
      h4('User Instruction'),
      h5('This application enables you to set 4 Input Parameters that determine the characteristic of your IRIS flower. Once this is done you can press the Submit button and we will then let you know based on our trained Random Forest Machine Learning Algorithm which type of IRIS it is.'),
      h5('In order to get you started we have entered a sample IRIS flower and its corresponding predicted classification.'),
      h5(' '),
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

