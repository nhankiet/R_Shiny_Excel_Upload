library(shiny)
library(readxl)

shinyServer(function(input,output){
  # The right column will appear when a file has been chosen
  data <- reactive({
    file1 <- input$file
    if(is.null(file1)){return()} 
    read_excel(file1$datapath)
    
  })
  
  # The metadata of the file
  output$filedf <- renderTable({
    if(is.null(data())){return ()}
    input$file
  })
  
  # The "main dish", data of the file
  output$table <- renderTable({
    if(is.null(data())){return ()}
    data()
  })
  
  # Serve 'em by render to the UI
  output$tb <- renderUI({
    h3("Your file data")
    tabsetPanel(tabPanel("File Info", tableOutput("filedf")),tabPanel("Data", tableOutput("table")))
  })
})