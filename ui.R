library(shiny)
library(markdown)
shinyUI(pageWithSidebar(
      ## Application title
      headerPanel("Calculate Your Body Mass Index (BMI)"),
      ## getting data entered in the side panel
      sidebarPanel(
            p('The Body Mass Index (BMI) is a measurement tool that compares your height to your weight and gives you an indication of whether you are Overweight, Underweight or at a Healthy Weight for your height.'),
            br(),
            p('To know your BMI you just need to select your Gender from the below list, Enter your Height in Inches and your Weight in Pounds.'),
            h3('Let Us Calculate Your BMI'),
            ## getting the gender type
            radioButtons("gender", "Your Gender:",
                         c("Male" = "Male",
                           "Female" = "Female")),
            ## getting the height
            numericInput('height','Enter your Height in Inches',70,min=40,max=200,step=1),
            ## getting the weight
            numericInput('weight','Enter your Weight in Pounds',160,min=50,max=400,step=1),
            ## sending the inputs
            submitButton('Submit') 
      ),
      ## reporting the results in the main panel
      mainPanel(
            h2('Your Results:'),
            p('You are a:'),
            verbatimTextOutput("gender"),
            p('Your Height in Inches is:'),
            verbatimTextOutput("height"),
            p('Your Weight in Pounds is:'),
            verbatimTextOutput("weight"),
            p('Your BMI is: '),
            verbatimTextOutput("BMI"),
            verbatimTextOutput("result"),
            br(),
            p("Having a BMI less than 18 means that you are under weight and you should consult your doctor in this regard. If your BMI between 18 and 24,9 then you have a perfect weight to your height and you should maintain it. However, if your BMI between 25 and 29,9 then you have an extra weight on your body, a deit would be a great idea :). 30 or greater BMI indicates obesity. If you are obese, you should consult a doctor immediatly.")
      )
))
