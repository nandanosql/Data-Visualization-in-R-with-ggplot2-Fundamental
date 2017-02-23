#Import library dplyr and gapminder for data manipulation

library("ggplot2")
library("gapminder")
library("dplyr")

# Create one data_frame based on gapminder dataset and filter it by year 2005
gap_2007 <- filter(gapminder, year==2007)

# Check Top records in tabular form. 

head(gap_2007)

# Create basic plot based on geom. geom_point() will give point stucture visualization

#IMG1.png
ggplot(gap_2007, aes(x = gdpPercap , y = lifeExp)) +
  geom_point()

#Create histogram bar based on particular filters. geom_bar() will give histogram .

#IMG2.png
ggplot(gap_2007,aes(x= continent)) +
  geom_bar()

#Do histogram based on population per continent. 
# For this requirment we need to first do filter based on requirment.

gap_2007_med <- gap_2007 %>%
  group_by(continent) %>%
  summarise(pop = median(pop))

# Check Top records in tabular form.

head(gap_2007_med)

#Now use geom_bar , if we are using y axes then need to specify stat into geom_bar condition.

#IMG3.png
ggplot(gap_2007_med,aes(x= continent,y=pop))+
  geom_bar(stat = "identity")

#Let's create some another basic plot graph. 

gap_australia <- filter(gapminder, country == 'Australia')

#create stand alone data frame,, using filter. 
plot_1 <- ggplot(gap_australia,aes(x = year, y = gdpPercap))

# now we can use plot_1 variable with other geom for getting graphs. 
# For point plot. Syntax is :- data_frame + geom_graph_name()
# for Point graph , use geom_point()

#IMG4.png
plot_1 + geom_point()

# for Line graph , use geom_line()

#IMG5.png
plot_1 + geom_line()

# Combine two graph by using + sign

#IMG6.png
plot_1 + geom_point() + geom_line()

# for area graph , use geom_area()

#IMG7.png
plot_1 + geom_area()

# Save graph into png format. 
# Method 1

#IMG8.png
plot_1 +
  geom_point()+
  geom_line()+
  ggsave("iceland_gdp.png", height = 6, width = 8)

#Method 2

#IMG9.png
plot_2 <- ggplot(gap_iceland,aes(x = year, y = gdpPercap)) + 
  geom_point() + 
  geom_line()

ggsave("iceland_gdp2.png",plot = p2, height = 6, width = 8)

# Graph.png will be save into your directory. 
# For know about directory use getwd()

getwd()

# These are basic plotting . 

# Check Top data of subset of gap_2007 which we created in starting.

head(gap_2007)

# Start to do histogram , use geom_histogram()
# if we use geom_histogram() , then it is the chances that bins size issue will not give 
#visualization in more effective way. 

#IMG10.png
ggplot(gap_2007,aes(x = gdpPercap)) +
  geom_histogram()

#Use bins = n to adjust bin size of your histogram. 

#IMG11.png
ggplot(gap_2007,aes(x = gdpPercap)) +
  geom_histogram(bins = 10)

# we can also adjust width of our histogram by using binwidth = n

#IMG12.png
ggplot(gap_2007,aes(x = gdpPercap)) +
  geom_histogram(binwidth = 5000)

# get density graph by using geom_density

#IMG13.png
ggplot(gap_2007,aes(x = gdpPercap)) +
  geom_density()

#use box_plot() for getting box format graph. 

#IMG14.png
ggplot(gap_2007,aes(x = continent, y = lifeExp)) +
  geom_boxplot()
  
# add other function , for making more reliable. 

#IMG15.png
ggplot(gap_2007,aes(x = continent, y = lifeExp)) +
  geom_boxplot() +
  geom_point()

#geom_jitter() used for giving effect of geom_point()
# We can adjust placing of geom_function as overlayer effect. 
# geom_jitter() comes with width = n and alpha = m funtion to change jitter effects. 

#IMG16.png
ggplot(gap_2007,aes(x = continent, y = lifeExp)) +
  geom_jitter()+
  geom_boxplot()

#IMG17.png
ggplot(gap_2007,aes(x = continent, y = lifeExp)) +
  geom_boxplot() +
  geom_jitter()

#IMG18.png
ggplot(gap_2007,aes(x = continent, y = lifeExp)) +
  geom_boxplot() +
  geom_jitter(width = 0.5, alpha = 0.5)

#IMG19.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp,
                     color = continent)) +
  geom_point()
  
# use shape = column_name  help to visualize the graph with different shape for different data. 
# we can use color = column_name for getting colored graph based on colored column_name. 

#IMG20.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp,
                     shape = continent)) +
  geom_point()

#IMG21.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp,
                     shape = continent, color = continent)) +
  geom_point()

#IMG22.png
ggplot(gap_2007, aes(x = gdpPercap, y = lifeExp,
                     size = pop, color = continent)) +
  geom_point()

# Create another subset of data set gapminder for line graph based on horizontal and vertical 

gap_population <- gapminder %>% 
  group_by(continent, year) %>%
  summarise(pop = mean(pop))

head(gap_population)

# in case of seperate continent and year , geom_line() not able to understand start and end point.

#IMG23.png
ggplot(gap_population,aes( x = year , y = pop)) +
  geom_line()

# so in this condition use , group = column_name method for getting graph.
# if we replace group with color then get graph with colored column_name

#IMG24.png
ggplot(gap_population,aes( x = year , y = pop, group = continent)) +
  geom_line()

#IMG25.png
ggplot(gap_population,aes( x = year , y = pop, color = continent)) +
  geom_line()






