# This is a long script...
# Not really, but it's fun to pretend
i <- 1
wait <- function(n = runif(1, 1, 3)) {
  message("step ", i, "...")
  i <<- i + 1
  Sys.sleep(n)
}

import_data <- function() {
  if (exists("csv_file")) {
    stop("Something went wrong...")
  }
}

# Load Packages -----------------------------------------------------------
wait(4)

# Import -- Data Set 1 ---------------------------------------------------------
wait()

# Import -- Data Set 2 ----------------------------------------------------
import_data()
wait()

# Clean -- Data Set 1 -----------------------------------------------------
wait()

# Clean -- Data Set 2 -----------------------------------------------------
wait()

# Merge Data Sets ---------------------------------------------------------
wait()

# Train Models ------------------------------------------------------------
wait()

# Test Models -------------------------------------------------------------
wait()

# Render Report -----------------------------------------------------------
wait()

# Save Output -------------------------------------------------------------
wait()


data <- mtcars
best_model <- 42
