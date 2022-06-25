library(ggplot2)
Growth <- read.csv(C:\\Users\\39342\\Desktop\\Database\\Database\\Database_completo_csv\\Growth.csv)

ggplot(data = Growth, mapping = aes(x=Year))+
  
#ZERO% HORIZONTAL LINE
  
  geom_hline(yintercept = 0, color="black", size=1.2)+
  
#OUTPUT OF THE LINES IN THE GRAPH
  
  geom_line(mapping = aes(y=Italy, color="Italy"), size=1.1)+
  geom_point(mapping = aes(y=Italy, color="Italy"))+
  geom_line(mapping = aes(y=Europe, color="Europe"), size=1.1)+
  geom_point(mapping = aes(y=Europe, color="Europe"))+
  geom_line(mapping = aes(y=World, color="World"), size=1.1)+
  geom_point(mapping = aes(y=World, color="World"))+
  
#ADDING TEXT TO THE GRAPH
  
  labs(x="Year", y="Growth Rate", 
       title ="Population Growth Rate", 
       subtitle = "Population Growth Rate comparison from 1990-2020", 
       caption = "source: World Bank of Data
       by Francesco Stabilini",)+   
  
#MANUALLY CHANGING THE COLOR OF THE LINES FOR BETTER VISUALIZATION 
  
  scale_color_manual(labels=c("Italy", "Europe", "World"), 
                     values = c("Italy"="cyan3", 
                                "Europe"="tomato2", 
                                "World"="darkolivegreen3"))
  
