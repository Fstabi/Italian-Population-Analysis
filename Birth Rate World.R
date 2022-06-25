library(ggplot2)
library(tidyverse)

ggplot(data = Birth_rate, mapping = aes(x=Year))+
  
#OUTPUT OF THE LINES IN THE GRAPH
  
  geom_line(mapping = aes(y= North_america, color="North_america"), size= 1.1)+ 
  geom_point(mapping = aes(y=North_america, color="North_america"))+
  geom_line(mapping = aes(y= Latin_america, color="Latin_america"), size= 1.1)+ 
  geom_point(mapping = aes(y=Latin_america, color="Latin_america"))+
  geom_line(mapping = aes(y=Italy, color="Italy"), size=1.1)+
  geom_point(mapping = aes(y=Italy, color="Italy"))+
  geom_line(mapping = aes(y=Europe, color="Europe"), size= 1.1)+ 
  geom_point(mapping = aes(y=Europe, color="Europe"))+
  geom_line(mapping = aes(y=World, color="World"), size=1.1)+
  geom_point(mapping = aes(y=World, color="World"))+
  geom_line(mapping = aes(y=Africa, color="Africa"), size= 1.1)+ 
  geom_point(mapping = aes(y=Africa, color="Africa"))+
  geom_line(mapping = aes(y=Asia, color="Asia"), size= 1.1)+ 
  geom_point(mapping = aes(y=Asia, color="Asia"))+

#ADDING TEXT TO THE GRAPH
  
  labs(x="Year", y="Birth Rate", 
       title ="Birth Rate Variation", 
       subtitle = "Birth Rate Variation per 1000 people from 1990-2020", 
       caption = "source: World Bank of Data
       by Francesco Stabilini",)+
  
#MANUALLY CHANGING THE COLOR OF THE LINES FOR BETTER VISUALIZATION
  
  scale_color_manual(labels=c("Italy", "Europe", "World", "North_america", "Latin_america", "Africa", "Asia"), 
                     values = c("Italy"="cyan3", 
                                "Europe"="tomato2", 
                                "World"="violetred", 
                                "North_america"="gold", 
                                "Latin_america"="springgreen3", 
                                "Africa"="orange", 
                                "Asia"="deepskyblue4"))


