## Create the personal library if it doesn't exist. Ignore a warning if the directory already exists.
dir.create(
  Sys.getenv("R_LIBS_USER"),
  showWarnings = FALSE,
  recursive = TRUE
)
install.packages(
  "rjson",
  Sys.getenv("R_LIBS_USER"),
  repos = "http://cloud.r-project.org",
  dependencies = TRUE
)
install.packages(
  "plyr",
  Sys.getenv("R_LIBS_USER"),
  repos = "http://cloud.r-project.org",
  dependencies = TRUE
)
install.packages(
  "ggplot2",
  Sys.getenv("R_LIBS_USER"),
  repos = "http://cloud.r-project.org",
  dependencies = TRUE
)
