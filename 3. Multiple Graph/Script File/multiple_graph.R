#Import library dplyr and gapminder for data manipulation

library("ggplot2")
library("gapminder")
library("dplyr")

# Create one data_frame based on gapminder dataset and filter it by year 2005
gap_2007 <- filter(gapminder, year==2007)

# use facet_grid() for getting multiple data graph based on selected columns

# IMG1.png 
ggplot(gapminder,aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  facet_grid(continent ~ year)

#let's take mean calculation 

gap_life <- gapminder %>% 
  group_by(continent, year) %>%
  summarise(lifeExp = mean(lifeExp))

#we can use facet_grid() for grup_by way.

#IMG2.png 
ggplot(gap_life, aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_grid(continent ~ .)

#IMG3.png
ggplot(gap_life, aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_grid(. ~ continent)

# Giving Title for Graph  by using labs()

#IMG4.png
ggplot(gap_life, aes(x = year, y = lifeExp)) +
  geom_line() +
  facet_wrap(~ continent) +
  labs(title="Continent Graph") + 
  theme(plot.title=element_text(size=rel(1.5)))

#geom_smooth() is used for overplotting

#IMG5.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp)) +
  geom_point() +
  geom_smooth()

# method = "lm" for linear module

#IMG6.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp)) +
  geom_point() +
  geom_smooth(method = "lm")

#snap= 0.2 for show frequency on small pan.

#IMG7.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp)) +
  geom_point() +
  geom_smooth(span = 0.2)

#IMG8.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp)) +
  geom_point() +
  geom_smooth(span = 0.9)

#IMG9.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp)) +
  geom_point() +
  facet_wrap(~ continent) +
  geom_smooth()

#IMG10.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp, color = continent)) +
  geom_point() +
  facet_wrap(~ continent) +
  geom_smooth()

#color makes graph more interactive.

#IMG11.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp)) +
  geom_point() +
  facet_wrap(~ continent) +
  geom_smooth(aes(color = continent))
