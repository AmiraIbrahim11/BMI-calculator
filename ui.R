#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(fluidPage(
  titlePanel("BMI Calculator for Adult"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("mass_kg", label = strong("Input your weight (KG)"),min = 30, max = 250,70), 
      br(),
      sliderInput("height_cm", label = strong("Input your height (CM)"),min = 90, max = 220,170),
      br(),
      actionButton("YourBMI", label = "Submit")),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Show your BMI",
                 p(h3("Input measurement is:")),
                 textOutput("current_weight"),
                 textOutput("current_height"),
                 br(),
                 p(h3("Your BMI calculated is:")),
                 textOutput("BMI_result"),
                 p(h3("This means you are:")),
                 textOutput("indicator_show")),
        tabPanel("More Informations about BMI",
                 p(h3("Why are BMI measurements important?")),
                 br(),
                 helpText("BMI scores are a good indicator of whether you are a high BMI, a low BMI or if you are within the healthy weight range. Having a high BMI can increase your risk factors for certain diseases such as diabetes , heart disease, high blood pressure."),
                 p(h3("What is the classification proposed by the World Health Organization (WHO)?")),
                 helpText(" (BMI <18.5 :  Underweight),
                          (BMI [18.5-24.9] :  Normal weight),
                          (BMI [25-29.9] :  Overweight),
                          (BMI >=30 :  Obesity)"))
      )))
))

