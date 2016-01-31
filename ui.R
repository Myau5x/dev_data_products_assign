library(shiny)
shinyUI(pageWithSidebar(
      headerPanel("Calculate circumference of orange tree by age"),
      sidebarPanel(
            h3('Age of tree'),
            numericInput('id1', 'in days:', 0, min = 100, max = 2000, step= 1)
           
      ),
      mainPanel(
            h3('Predicted circumference'),
            h5('in mm'),
            verbatimTextOutput("oid1")
           
      )
))