library(tidyverse)
install.packages("tidytuesdayR")
install.packages("ISLR2")
install.packages("httr2")

library(tidytuesdayR)
library(ISLR2)
tuesdata <- tidytuesdayR::tt_load(2021, week = 41)
nurses <- tuesdata$nurses
theme_set(theme_minimal())

glimpse(Carseats)

#Basic bar chart
ggplot(Carseats, aes(x = ShelveLoc, fill = ShelveLoc)) +
  geom_bar(width = .60, show.legend = FALSE) + 
  scale_fill_brewer(palette = "Dark2") +
  labs(y = "Count of Car Seats") +
  theme(axis.title.y = element_text(size = 14, face = "bold", angle = 90))  

# adding another variable
ggplot(Carseats, aes(x = US,
                     fill = ShelveLoc)) +
    geom_bar() + 
    scale_fill_brewer(palette = "Dark2")


