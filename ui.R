library(shiny)
data(mtcars)
attach(mtcars)
shinyUI(
        pageWithSidebar(
                headerPanel("Horsepower Prediction--Divide your car's weight by 1,000 lbs and receive a prediction of your car's horsepower"),
                sidebarPanel(
                        numericInput('wt', 'Weight (lb/1000)', 0, min = 0, max = 20, step = .1),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3('Results of prediction'),
                        h4('You entered'),
                        verbatimTextOutput("inputValue"),
                        h4('Which resulted in a prediction of '),
                        verbatimTextOutput("prediction")
                )
        )
)


