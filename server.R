library(shiny)
HP <- function(wt) wt * 45.33 #45.33 is the result of mean(hp/wt) in the mtcars dataset
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$wt})
                output$prediction <- renderPrint({HP(input$wt)})
        }
)