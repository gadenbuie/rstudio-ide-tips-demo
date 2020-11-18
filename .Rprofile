## Uncomment if you want to source existing Rprofile first...
# if (file.exists('~/.Rprofile')) {
#   base::sys.source('~/.Rprofile', envir = environment())
# }

# if (interactive() && requireNamespace("shrtcts", quietly = TRUE)) {
#   shrtcts::add_rstudio_shortcuts(".shrtcts.R", set_keyboard_shortcuts = TRUE)
# }

if (interactive() && requireNamespace("rsthemes", quietly = TRUE)) {
  # Set preferred themes if not handled elsewhere..
  rsthemes::set_theme_light("Textmate (Default)")  # light theme
  rsthemes::set_theme_dark("Horizon Dark {rsthemes}") # dark theme
  rsthemes::set_theme_favorite(c(
    "Night Owl {rsthemes}",
    "Flat White {rsthemes}",
    "Oceanic Plus {rsthemes}",
    "One Dark {rsthemes}",
    "GitHub {rsthemes}"
  ))

  ## Automatically choose the correct theme based on time of day
  ## Requires {ipapi} - devtools::install_github("hrbrmstr/ipapi")
  # setHook("rstudio.sessionInit", function(isNewSession) {
  #   rsthemes::use_theme_auto()
  # }, action = "append")
}
