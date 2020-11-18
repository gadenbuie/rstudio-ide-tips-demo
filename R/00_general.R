library(dplyr)

# View data, then zoom to the table
# Press: Ctrl + Shift + 1
View(starwars)

# Give your zoomed table a name...
starwars %>%
  filter(species == "Human") %>%
  View()


# Source (but don't peek!) this file
source("R/functions.R")

# Run this function a few times...
black_box()

# Navigate to the function.
# 1. Ctrl + .
# 2. F2

# What does this function do? (Use F1)
comment(starwars) <- "Data from Star Wars API"

