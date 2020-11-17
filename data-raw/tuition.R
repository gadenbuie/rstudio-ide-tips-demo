# From tidytuesday: https://github.com/rfordatascience/tidytuesday/tree/master/data/2020/2020-03-10

library(rvest)
library(tidyverse)

url <- "https://nces.ed.gov/fastfacts/display.asp?id=76"

raw_nces <- url %>%
  read_html() %>%
  html_table(fill = TRUE) %>%
  .[[1]] %>%
  janitor::clean_names() %>%
  as_tibble() %>%
  slice(4:n()) %>%
  set_names(nm = c("year", "All Constant", "4 Year Constant", "2 Year Constant",
    "All Current", "4 Year Current", "2 Year Current")) %>%
  mutate(year = str_replace(year, "1985–862", "1985-86"),
    year = str_replace(year, "–", "-"))

dir.create(here::here("data"))
write_csv(raw_nces, here::here("data", "raw_nces.csv"))
