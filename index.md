---
title       : Coin Toss Experiment
subtitle    : Developing Data Products Presentation
author      : Andras Morauszki
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [bootstrap, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## An experiment

A mathematician called P. Revesz once performed a classroom experiment, dividing the classroom into two groups.  
The first group had to toss a coin 200 times and record the sequence of heads and tails.  
The second had to write down a sequence of heads and tails that they believe is reasonable.  
Revesz claimed, that the students could be classified back to their groups using a simple criterion.  
  
Can you guess, what this criterion was?

--- &radio

## An experiment II.

It was the length of the longest run of consecutive heads or consecutive tails.

What do you think is the expected length of the longest run for 200 coin tosses?

1. cca. 3 
2. cca. 5
3. cca. 6
4. _cca. 8 consecutive heads/tails_

*** .hint 
It's more than most people would think.

*** .explanation 
Are you sceptical? Try it yourself!

--- .class #id

## If you don't want to toss the coins yourself

And if you wouldn't want to toss the coin yourself and haven't got a classroom to do it for you, the link below will take you to an app, which runs the simulation for you.  
(NB: The other sequence still has to be written by people)

To access the app, [CLICK HERE!][1]
[1]: http://morauszkia.shinyapps.io/CPMyApp

--- .class #id

## How does it work?

The app was created using R package 'shiny'.  
It simulates a specified number of simulations of a specified number of coin tosses and uses the 'rle' function to calculate the lengths of runs of consecutive heads/tails. You can see an example of 20 coin tosses below.


```r
toss <- sample(c("h", "t"), 20, replace=TRUE, prob = c(0.5, 0.5))
seq <- rle(toss); maxseq <- max(rle(toss)$lengths)
print("The sequence was:", toss); print("The longest run was: ", maxseq)
```

```
## Warning in print.default("The sequence was:", toss): NAs introduced by
## coercion
```

```
## Error in print.default("The sequence was:", toss): invalid 'digits' argument
```

```
## [1] "The longest run was: "
```

Thank you for your kind attention!

--- .class #id
