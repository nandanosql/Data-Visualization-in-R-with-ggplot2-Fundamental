#Import library dplyr and gapminder for data manipulation

library("ggplot2")
library("gapminder")
library("dplyr")

# Create one data_frame based on gapminder dataset and filter it by year 2005
gap_2007 <- filter(gapminder, year==2007)

# start to scale along x axis. 

#IMG1.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10()

# by putting theme_dark() we can chage theme of graph.. 
# by changing another peoperties we can do experiment on respected facts. 

#IMG2.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  scale_x_log10() +
  theme_dark()

# geom_point(size = 2 ) used for put bigger size of points.

#IMG3.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10()

#theme(legend.position = "bottom") used for move legend position to bottom. 
#theme(legend.position = none) used for remove legend from graph. 

#IMG4.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = "bottom")

#theme(legend.position = c(0.1,0.85)) used for moving  legend to particular position. 

#IMG5.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1,0.85))

#ggsave("Gapminder_2007.png", height = 7, width = 7) used for saving graph into png format.

#Gap_2007.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1,0.85)) +
  ggsave("Gap_2007.png", height = 7, width = 7)

# Final touch of graph. 

#Gapminder_2007.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(size = 2) +
  scale_x_log10() +
  theme_light() +
  theme(legend.position = c(0.1,0.85),
        axis.text = element_text(size = 10),
        axis.title = element_text(size = 12)) +
  labs(x = "Per continent GDP",
       y = "Life Expectancy",
       title = "2007 Life Expectency  and GDP",
       color = "Continent")+
  ggsave("Gapminder_2007.png", height = 7, width = 7)













  
