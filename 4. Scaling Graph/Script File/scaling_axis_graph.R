#Import library dplyr and gapminder for data manipulation

library("ggplot2")
library("gapminder")
library("dplyr")

# Create one data_frame based on gapminder dataset and filter it by year 2005
gap_2007 <- filter(gapminder, year==2007)

# scale_x_continuous() used for scaling based on X axis.

#IMG1.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point() +
  scale_x_continuous()

#IMG2.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point() +
  scale_x_continuous()

#   scale_x_continuous(trans = "log10") used for tras at log 10 

#IMG3.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point() +
  scale_x_continuous(trans = "log10")

#IMG4.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point() +
  scale_x_log10()

# scale_y_continuous(limits = c(20,80)) used to limit y axisin range of 20 -80.

#IMG5.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point() +
  scale_y_continuous(limits = c(20,80))

#IMG6.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() +
  scale_x_log10()

#  scale_color_brewer(palette = "Dark1") used for changing palette into color based on Dark1
# There are other types of palettes present which we can used as Dark2 , Dark3 etc. 

#IMG7.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() +
  scale_x_log10() +
  scale_color_brewer(palette = "Dark1")

#IMG8.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() +
  scale_x_log10() +
  scale_color_brewer(palette = "Dark2")

# scale_color_manual(values = c("#FF0000","#000000","#33ff49","#333cff","#ff33c7")) used to put manual color coding for respected legend.

#IMG9.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() +
  scale_x_log10() +
  scale_color_manual(values = c("#FF0000","#000000","#33ff49","#333cff","#ff33c7"))

# geom_point(color = "Black") used to change point into black in color. 
# Can use another option which we can assosiated with this.

#IMG10.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(color = "Black") +
  scale_x_log10()

#IMG11.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(color = "Black" , size = 2) +
  scale_x_log10()





