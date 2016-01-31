library(shiny)
shinyUI(pageWithSidebar(
      headerPanel("Calculate circumference of orange tree by age"),
      sidebarPanel(
            h3('Age of tree'),
            numericInput('id1', 'in days:', 0, min = 100, max = 2000, step= 1)
           
      ),
      mainPanel(
            h3('Predicted circumference'),
            h4('in mm'),
            verbatimTextOutput("oid1"),
            h5('Documentation'),
            p("This application predicts tree's circumference based on tree's circumference.
I used dataset 'Oranges' from R package 'datasets'.
I used linear regression model.
User should input age of tree in input window then he gets result in mm in output window.")
      )
))