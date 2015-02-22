calcVal <- function(val1, val2, operator) {
## Parse the arithmetic operator to perform calculations
## In case of 1/x use the Value 1 as x and ignore Value 2
   if (operator == "%") {
       operator <- '*'
       val1 <- val1 / 100
   }
   else if (operator == "1/x") {
       val2 <- val1
       val1 <- 1
       operator <- ' / '
   }

## Handle Square Root operation by direct application of function on Value 1
   if (operator == "sqroot")
       sqrt(val1)
   else
       eval(parse(text=paste(as.character(val1), operator, as.character(val2))))
}
shinyServer(
function(input, output) {
output$inputValue1 <- renderPrint({input$val1})
output$inputOperator <- renderPrint({input$operator})
output$inputValue2 <- renderPrint({input$val2})
output$result <- renderPrint({calcVal(input$val1, input$val2, input$operator)})
}
)

