black_box <- function(nice_probability = 0.25) {
  be_nice_this_time <- runif(1) >= nice_probability

  if (be_nice_this_time) {
    message(praise::praise("(ʘ‿ʘ)╯ You are ${adjective}!"))
  } else {
    message("(⌐■_■)")
  }
}
