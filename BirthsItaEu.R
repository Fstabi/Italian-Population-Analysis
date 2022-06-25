install.packages("tidyverse")
library(ggplot2)
library(tidyverse)
library(dplyr)

ggplot(data = Birth_rate, mapping = aes(x=Year))+
  
#OUTPUT OF THE LINES IN THE GRAPH
  
  geom_line(mapping = aes(y=Italy, color="Italy"), size=1.1)+
  geom_point(mapping = aes(y=Italy, color="Italy"))+
  geom_line(mapping = aes(y=Europe, color="Europe"), size= 1.1)+ 
  geom_point(mapping = aes(y=Europe, color="Europe"))+
  
#ADDING TEXT TO THE GRAPH
  
  labs(x="Year", y="Birth Rate", 
       title ="Birth Rate Italy vs Europe", 
       subtitle = "Birth Rate Variation per 1000 people comparison between Italy and Europe from 1990-2020", 
       caption = "source: World Bank of Data
       by Francesco Stabilini",)

#CREATING A NEW COLUMN TO FIND THE PERCENTAGE DELTA BETWEEN THE TWO COLUMNS

Birth_rate$Pct_delta_Ita_Eu=c(Birth_rate$Europe-Birth_rate$Italy)

#FINDING THE BIGGEST PERCENTAGE GAP

Biggest_gap <- arrange(Birth_rate, desc(Pct_delta_Ita_Eu))
view(Biggest_gap)

#FINDING THE SMALLEST PERCENTAGE GAP

Smallest_gap <- arrange(Birth_rate, Pct_delta_Ita_Eu)
view(Smallest_gap)


