## Uncomment if you want to source existing Rprofile first...
# if (file.exists('~/.Rprofile')) {
#   base::sys.source('~/.Rprofile', envir = environment())
# }

if (interactive() && requireNamespace("shrtcts", quietly = TRUE)) {
  shrtcts::add_rstudio_shortcuts(set_keyboard_shortcuts = TRUE)
}

if (interactive() && requireNamespace("rsthemes", quietly = TRUE)) {
  # Set preferred themes if not handled elsewhere..
  # rsthemes::set_theme_light("Flat White {rsthemes}")  # light theme
  rsthemes::set_theme_light("GitHub {rsthemes}")  # light theme
  rsthemes::set_theme_dark("Horizon Dark {rsthemes}") # dark theme
  rsthemes::set_theme_favorite(c(
    "Night Owl {rsthemes}", "Flat White {rsthemes}",
    "Oceanic Plus {rsthemes}", "One Dark {rsthemes}"
  ))

  # Automatically choose the correct theme based on time of day
  setHook("rstudio.sessionInit", function(isNewSession) {
    rsthemes::use_theme_auto()
  }, action = "append")
}
