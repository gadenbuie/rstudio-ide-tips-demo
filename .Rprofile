## Uncomment if you want to source existing Rprofile first...
# if (file.exists('~/.Rprofile')) {
#   base::sys.source('~/.Rprofile', envir = environment())
# }

# if (interactive() && requireNamespace("shrtcts", quietly = TRUE)) {
#   shrtcts::add_rstudio_shortcuts(".shrtcts.R", set_keyboard_shortcuts = TRUE)
# }

if (interactive() && requireNamespace("rsthemes", quietly = TRUE)) {
  # Set preferred themes if not handled elsewhere..
  rsthemes::set_theme_light("Textmate (default)")  # light theme
  rsthemes::set_theme_dark("Oceanic Plus {rsthemes}") # dark theme
  rsthemes::set_theme_favorite(c(
    "GitHub {rsthemes}",
    "Flat White {rsthemes}",
    "Night Owl {rsthemes}",
    "One Dark {rsthemes}",
    "Horizon Dark {rsthemes}"
  ))

  ## Automatically choose the correct theme based on time of day
  ## Requires {ipapi} - devtools::install_github("hrbrmstr/ipapi")
  # setHook("rstudio.sessionInit", function(isNewSession) {
  #   rsthemes::use_theme_auto()
  # }, action = "append")
}
