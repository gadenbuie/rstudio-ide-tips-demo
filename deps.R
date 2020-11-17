## !!! DON'T SOURCE THIS FILE, RUN IT LINE BY LINE !!! ###
## !!! DON'T SOURCE THIS FILE, RUN IT LINE BY LINE !!! ###
## !!! DON'T SOURCE THIS FILE, RUN IT LINE BY LINE !!! ###


# Basics ----
install.packages("remotes")         # For installing packages
remotes::install_cran("tidyverse")  # Because tidyverse
remotes::install_cran("usethis")    # Common actions from command line
remotes::install_cran("here")       # Easy paths in projects and .Rmd

# Style ----
remotes::install_github("gadenbuie/rsthemes") # Themes for RStudio

remotes::install_cran("styler")  # style your R code

# Addins ----
remotes::install_github("daattali/addinslist")  # Easy addin discovery inside RStudio
remotes::install_github("seasmith/AlignAssign") # Easy <- and = line ups
remotes::install_github("gadenbuie/shrtcts")    # Make your own addins
remotes::install_cran("xaringan")               # For infinite_moon_reader()

# Some more addins to check out
remotes::install_github("ThinkR-open/remedy")   # Lots of Rmd addins
remotes::install_github("MilesMcBain/datapasta")# Paste tables as data frames
remotes::install_github("Toniiiio/imageclipr")  # Paste images into Rmd!
remotes::install_github("MilesMcBain/gistfo")   # Stash code as GitHub gist
remotes::install_github("gadenbuie/ermoji")     # Find emojis without leaving RStudio


# Snippets ----
## Totally optional, here's how I install my own snippets from GitHub
## Info: https://github.com/gadenbuie/snippets
## Caution: this may overwrite existing snippets, so copy paste instead if you want

local({
  snippets_dir <- fs::path_home_r(".R", "snippets")
  fs::dir_create(snippets_dir) # make sure ~/.R/snippets exists

  gh_base_url <- "https://raw.githubusercontent.com/gadenbuie/snippets/master/"

  for (snippet in paste0(c("r", "markdown", "css", "html"), ".snippets")) {
    download.file(
      paste0(gh_base_url, snippet),
      fs::path(snippets_dir, snippet)
    )
  }
})
