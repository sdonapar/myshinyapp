library(shiny)

shinyUI(pageWithSidebar(
        headerPanel("Predict Your Car Milage"),
        sidebarPanel(
                h5('Instructions'),
                p('This app will predict the milage of your car in miles/US gallon. 
                  Please select the appropriate parameters from the right panel and 
                  you will see the milage of your car at the bottom'),
                h5('Predection Model Information'),
                p('The data used for modelling was extracted from the 1974 Motor Trend US magazine, 
                  and comprises fuel consumption and 10 aspects of automobile design 
                  and performance for 32 automobiles (1973–74 models).'),
                p('Linear Regression is used to predict the outcome ')
        ),
        mainPanel(
                textInput("carname", label= h5("Enter Car name"),
                         value="Mazda RX4" ),
                selectInput("cyl",label=h5("Number of Cylenders"),
                            choices=list("4" = 4, "6" = 6, "8" = 8 ),
                            selected = 6),
                sliderInput("weight", label= h5("Weight (lb)"),
                            min = 1500, max = 5500, value=2620 ),
                sliderInput("hp", label= h5("Gross horse power(hp)"),
                            min = 52, max = 335, value=110 ),
                radioButtons("am",label = h5("Tranmission"),
                             choices = list("Automatic" = 0, "Manual" = 1),selected = 0),
                #actionButton("predict", label = "Predict"),
                br(),
                br(),
                h3(textOutput("text1"))
        )))
