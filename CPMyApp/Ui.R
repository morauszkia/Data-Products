shinyUI(fluidPage(
  titlePanel(
    h3("Coin toss experiment")
  ),
  
  sidebarLayout(
    sidebarPanel(
            h5("This app simulates the specified number of independent simulations with the specified number of coin tosses per simulation and then calculates the maximum, mean and std. deviation of the longest runs for these simulations."),
            h5("Specify the number of coin tosses per simulation and the number of simulations and press 'Run'"),
            numericInput("toss",
                        label=h5("Number of coin tosses"),
                        value = 40),
            numericInput("simn",
                         label=h5("Number of simulations"),
                         value = 100),
            actionButton("Runbutton", "Run!"),
            h5("What color would you choose for the bar plot?"),
            radioButtons("color", label=h5("Choose color for plot"), 
                         choices = list("Blue" = "skyblue", "Green" = "chartreuse2",
                                        "Red" ="orangered", "Yellow" = "gold"),
                         selected="skyblue")
            ),
    
    mainPanel(
        h4(textOutput("toss")),
        h4(textOutput("simn")),
        br(),
        h4(textOutput("runmax")),
        h4(textOutput("runmean")),
        h4(textOutput("runsd")),
        
        plotOutput("hgram")
    )
  )
  ))
