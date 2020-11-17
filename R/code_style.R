library(dplyr)

# There is an error in this code... where is it?
starwars %>% select(name, species, height) %>% group_by(species) %>%
  filter(birth_year > 25) %>% summarize(height_min = min(height), height_mean = mean(height), height_max = max(height))





# The client wants name, species, homeworld, color, birth_year
# How easy is this to change?
starwars %>%
  select(name, species, birth_year, homeworld, ends_with("color"))



## Turn these colors into a vector
# gray: #C2C7B5
# green: #6E989B
# yellow: #BC8258
# rust: #71503E
# orange: #BC4610



## One of the colors in this vector isn't quite right...
colors <- c(blue = "#4D8DC9", gray = "#404040", white = "#FFFFFF", orange = "E7553C", green = "#A4C689", yellow = "#FDBE4B", pink = "#D260A4")
