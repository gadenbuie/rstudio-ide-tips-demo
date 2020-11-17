black_box <- function(always_be_nice = FALSE) {
  if (isTRUE(always_be_nice) || sample(c(TRUE, FALSE), 1, prob = c(0.1, 0.9))) {
    message(praise::praise("(ʘ‿ʘ)╯ You are ${adjective}!"))
  } else {
    message("(⌐■_■)")
  }
}
