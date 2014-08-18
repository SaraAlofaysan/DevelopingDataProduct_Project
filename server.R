## Make sure that Shiny library is loaded
library(shiny)
library(markdown)

## BMI function calculator which used to calculate the person BMI 
BMIcal<-function(height,weight) (weight/(height*height))*703

## This function is used to report the result of the BMI value
result<-function(height,weight){
      BMI<-BMIcal(height,weight)
      if(BMI<=18.5)
            text<-"You Are Under Weight"
      else if(BMI<=24.9)
            text<-"You Are At A Healthy Weight"
      else if(BMI<=29.9)
            text<-"You Are Overweight"
      else if(BMI>=30)
            text<-"You Are Obesity"
      text
}

## Shiny Server where the calculations and conditions performed
shinyServer(
      function(input,output){
            output$gender<-renderPrint({input$gender})
            output$height<-renderPrint({input$height})
            output$weight<-renderPrint({input$weight})
            output$BMI<-renderPrint({BMIcal(input$height,input$weight)})
            output$result<-renderPrint({result(input$height,input$weight)})
      }
)