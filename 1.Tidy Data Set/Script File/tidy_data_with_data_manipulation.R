# Tidy Data :- vita.had.co.nz/papers/tidy-data.pdf
#Tidy datasets are easy to manipulate, model and visualise, and have a specific structure: each variable is a column,
#each observation is a row, and each type of observational unit is a table.

#Import library dplyr and gapminder for data manipulation

library("dplyr")
library("gapminder")

# Check top data in row and column format by using head method. 
#syntaxt is :- head(dataset_name)

head(gapminder)

# Basic filter operation based on Particular year
#Going to filter data from Gapminder dataset , which belongs to year 2005
#syntax is :- filter(dataset_name,column_name == filter_value)

filter(gapminder,year==2005)

# Assign particular data into another variable and make it as another data frame. 
# syntax is :- another_df_name <- filter(dataset_name,column_name == filter_value)

gap_2005 <- filter(gapminder,year==2005)

# Let's do another sample data manipulation on Dataset Gapminder.
# Filter based on particular country name / names
#syntax is :- filter(dataset_name,column_name %in% c("column_data1","column_data2"))

filter(gapminder,country %in% c("Angola","Belgium"))

# Multiple data filter 

filter(gapminder,year ==2007 &  continent == c("Africa","Asia"))

# Use script for data manipulation
# %>% is used for assign particular dataset with upcoming filters.

gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarise(medpop  = median(pop))

# We can do data visualization based on abouve datas. 
