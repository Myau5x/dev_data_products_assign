library(shiny)
library(datasets)
dd<- lm(circumference ~ age,data=Orange)
shinyServer(
      function(input, output) {
            
            #x<- reactiveTable({as.numeric(input$id1)})
            y<- reactive({as.numeric(predict(dd,data.frame(age  = as.numeric(input$id1))))})
            output$oid1 = renderPrint({y()})
         
      }
)