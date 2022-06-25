library(ggplot2)

ggplot(data = Avg_age, mapping = aes(x=Year))+

#OUTPUT OF THE LINES IN THE GRAPH
  
  geom_line(mapping = aes(y=Italy, color="Italy"), size=1.1)+
  geom_point(mapping = aes(y=Italy, color="Italy"))+
  geom_line(mapping = aes(y=Europe, color="Europe"), size= 1.1)+ 
  geom_point(mapping = aes(y=Europe, color="Europe"))+
  geom_line(mapping = aes(y=Northern.America, color="Northern.America"),  size= 1.1)+
  geom_point(mapping = aes(y=Northern.America, color="Northern.America"))+
  geom_line(mapping = aes(y=Latin.America, color="Latin.America"),  size= 1.1)+ 
  geom_point(mapping = aes(y=Latin.America, color="Latin.America"))+
  geom_line(mapping = aes(y=Asia, color="Asia"),  size= 1.1)+
  geom_point(mapping = aes(y=Asia, color="Asia"))+
  geom_line(mapping = aes(y=Africa, color="Africa"),  size= 1.1)+
  geom_point(mapping = aes(y=Africa, color="Africa"))+
  geom_line(mapping = aes(y=World, color="World"),  size= 1.1)+
  geom_point(mapping = aes(y=World, color="World"))+
  
#ADDING TEXT TO THE GRAPH
  
  labs(x="Year", y="Average Age", 
       title ="Average Age Variation", 
       subtitle = "Avg age variation in the world from 1990-2020", 
       caption = "source: Our World in Data
       by Francesco Stabilini",)+
  
#MANUALLY CHANGING THE COLOR OF THE LINES FOR BETTER VISUALIZATION 
  
  scale_color_manual(labels=c("Italy", "Europe", "World", "Northern.America", "Latin.America", "Africa", "Asia"), 
                     values = c("Italy"="cyan3", 
                                "Europe"="tomato2", 
                                "World"="violetred", 
                                "Northern.America"="deepskyblue4", 
                                "Latin.America"="springgreen3", 
                                "Africa"="orange", 
                                "Asia"="gold"))

