

shinyServer(function(input, output) {
        
        
        output$runmax <- renderText({
          input$Runbutton
          tosses <- sample(c("h", "t"), input$toss*input$simn, replace=TRUE, prob = c(0.5, 0.5))
          tossmat <- matrix(tosses, nrow=input$simn, ncol=input$toss)
          seqs <- apply(tossmat, 1, rle)
          maxseq <- rep(0, input$simn)
          for (i in 1:length(seqs)) {
            maxseq[i]<-max(seqs[[i]]$length)
          }
          output$toss <- renderText(paste("The number of coin tosses per simulation was:", input$toss))
          output$simn <- renderText(paste("The number of simulations was:", input$simn))
          
          output$runmean <- renderText({
            run2 <- paste("The mean of the longest runs:", round(mean(maxseq), digits=2))
          })
          output$runsd <- renderText({
            run3 <- paste("The standard deviation of the longest runs was:", round(sd(maxseq), digits=2))
          })
          output$hgram <- renderPlot({
            plotcolor <- input$color
            hgram <- barplot(table(maxseq), col=plotcolor,
                             main=paste("Distribution of the lengths of the longest runs"),
                             xlab=paste("Length of longest run"))
          })
          runmax <- paste("The longest run was:", max(maxseq))
        })
        
                                          
})