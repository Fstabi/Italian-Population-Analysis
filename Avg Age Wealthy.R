library(ggplot2)

ggplot(data = Avg_age, mapping = aes(x=Year))+
  
#OUTPUT OF THE LINES IN THE GRAPH
  
  geom_line(mapping = aes(y=Italy, color="Italy"), size=1.1)+
  geom_point(mapping = aes(y=Italy, color="Italy"))+
  geom_line(mapping = aes(y=Europe, color="Europe"), size=1.1)+
  geom_point(mapping = aes(y=Europe, color="Europe"))+
  geom_line(mapping = aes(y=Northern.America, color="North America"), size=1.1)+
  geom_point(mapping = aes(y=Northern.America, color="North America"))+

#ADDING TEXT TO THE GRAPH
  
  labs(x="Year", y="Average Age", 
       title ="Average Age Variation in the ''First World''", 
       subtitle = "Average Age Variation in economically developed areas from 1990-2020", 
       caption = "source: World Bank of Data
       by Francesco Stabilini",) +
  
#MANUALLY CHANGING THE COLOR OF THE LINES FOR BETTER VISUALIZATION 
  
  scale_color_manual(labels=c("Italy", "Europe", "North America"),
                     values = c("Italy"="cyan3","Europe"="darkolivegreen3", "North America"="tomato2"))

  
