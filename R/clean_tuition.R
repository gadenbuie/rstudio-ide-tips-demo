library(tidyverse)

# {here} makes it easy to find files in projects!
raw_nces_csv <- here::here("data", "raw_nces.csv")

raw_nces <- read_csv(raw_nces_csv)

# tidy_tuition <- function(raw_tuition) {
#   raw_tuition
# }

all_school <- raw_nces %>%
  slice(2:20) %>%
  mutate(type = "All Institutions") %>%
  pivot_longer(names_to = "tuition_type", values_to = "tuition_cost", `All Constant`:`2 Year Current`) %>%
  select(type, year, everything()) %>%
  mutate(tuition_cost = parse_number(tuition_cost))


public_school <- raw_nces %>%
  slice(22:34) %>%
  mutate(year = if_else(year == "2015-16" & `All Constant` == "17,237",
    "2016-17", year),
    type = "Public") %>%
  pivot_longer(names_to = "tuition_type", values_to = "tuition_cost", `All Constant`:`2 Year Current`) %>%
  select(type, year, everything()) %>%
  mutate(tuition_cost = parse_number(tuition_cost))



private_school <- raw_nces %>%
  slice(37:n()-1) %>%
  mutate(type = "Private") %>%
  pivot_longer(names_to = "tuition_type", values_to = "tuition_cost", `All Constant`:`2 Year Current`) %>%
  select(type, year, everything()) %>%
  mutate(tuition_cost = parse_number(tuition_cost))


tuition <- bind_rows(all_school, public_school, private_school)
