library(ggplot2)
install.packages("tidyverse")

ggplot(data = Italy, mapping = aes(x=Year)) + 
  geom_line(mapping = aes(y=Birth_rate_per1000, color="Birth_rate_per1000"), size=1.1) +
  geom_point(mapping = aes(y=Birth_rate_per1000, color="Birth_rate_per1000")) +
  geom_line(mapping = aes(y=Death_rate_per1000, color="Death_rate_per1000"), size=1.1) +
  geom_point(mapping = aes(y=Death_rate_per1000, color="Death_rate_per1000")) +
  
  labs(x="Year", y="Per 1000 People", 
       title ="Birth Rate vs Death Rate in Italy", 
       subtitle = "Death and Birth rates per 1000 people from 1990-2020", 
       caption = "source: World Bank of Data
       by Francesco Stabilini",) +
  
  scale_color_manual(labels=c("Births", "Deaths"),
                     values = c("Birth_rate_per1000"="cyan3", 
                                "Death_rate_per1000"="tomato2"))

         

