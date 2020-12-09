install.packages("quantmod")
install.packages("shiny")

library(quantmod)
library(shiny)

 ui <- fluidPage(# main argument for ui
   titlePanel("Stock Price Analysis"), #top panel
   
   sidebarLayout(
     sidebarPanel( 
       helptext("Select a stock to examine"),
       
       textInput(inputId = "symb", label = "Ticker symbol", "SPY"), # default is SPY
       dateRangeInput(inputId = "dates", 
                      "Date Range to view", # label
                      start = "2013-01-01",
                      end = as.character(Sys.Date())),
       dateInput(
         "dateBought",
         "Date Stock is Bought",
         value = "2015-01-01"
       ),
       br(),
       
       dateInput(
         "dateSold",
         "date stock is sold",
         value = as.character((Sys.Date()))
       )
       
       ),
     mainPanel(
       textOutput("text") # output text
       plotOutput("plot")
     
   ) #close main panel
   
   
 )
 )#end fluidpage

 
 server <- function(input, output) {
   
   stockprices <- reactive({
     getSymbols(input$symb, src = "yahoo",
                from = input$dates[1],
                to =input$dates[2],
                auto.assign = FALSE)
   })
   
   output$text <- renderText({
     buyPrice <- 
       getSymbols(input$symb, src = "yahoo",
                  from  = input$dateBought,
                  to = as.Date(input$dateBought) + 5,
                  
                             )
     
     
     sellPrice <- 
       getSymbols(input$symb, src = "yahoo",
                  from = input$dateSold,
                  to = as.Date(input$dateSold)+5,
                  auto.assign = FALSE)
     
     paste("Your Return is: ", paste0 ret(as.numeric(buyPrice[1,1], as.numeric(sellPrice[1,1]))), "%" )
   })
   
 } #close server function 

shinyApp(ui, server)