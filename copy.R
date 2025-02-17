# need to draft in an .R file to get color previews in RStudio
copy <- function() {
  file <- readLines("style/joyce_temp.R")
  writeLines(file, "style/joyce.theme")
}