#load packages
library("tidyverse")
library("magrittr")

#import data
ipf_lifts <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-10-08/ipf_lifts.csv")
  

#convert categorical variables to factors, convert name column back to character

ipf_lifts %<>% 
  mutate_if(is.character, as.factor) %>%
  mutate(name = as.character(name))