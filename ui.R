shinyUI(pageWithSidebar(
headerPanel("Calculator"),
## Prompt for calculation input values and arithmetic operator
sidebarPanel(
numericInput('val1', 'Value 1', 0),
radioButtons("operator", "Arithmetic Operator",
c("+" = "+",
"-" = "-",
"*" = "*",
"/" = "/",
"%" = "%",
"1/x" = "1/x",
"square root" = "sqroot"
)),
numericInput('val2', 'Value 2', 0),
submitButton('='),
h4('Value 1 is used for 1/x and square root operations and Value 2 will be ignored')
),
mainPanel(
headerPanel('Calculation Results'),
h2('Parameters'),
h4('Value 1'),
verbatimTextOutput("inputValue1"),
h4('Operator'),
verbatimTextOutput("inputOperator"),
h4('Value 2'),
verbatimTextOutput("inputValue2"),
h4('Calculated Value'),
verbatimTextOutput("result")
)
)
)
