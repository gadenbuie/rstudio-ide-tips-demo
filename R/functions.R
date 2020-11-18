black_box <- function(always_be_nice = FALSE, inclination_to_be_nice = 0.1) {
  random_number <- runif(1)

  want_to_be_nice <- random_number <= inclination_to_be_nice

  be_nice_this_time <- isTRUE(always_be_nice) || be_nice_this_time

  if (be_nice_this_time) {
    message(praise::praise("(ʘ‿ʘ)╯ You are ${adjective}!"))
  } else {
    message("(⌐■_■)")
  }
}
