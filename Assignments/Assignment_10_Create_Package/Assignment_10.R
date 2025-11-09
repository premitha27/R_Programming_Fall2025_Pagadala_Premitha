# Step 0: Install tools
install.packages("devtools")
install.packages("roxygen2")
library(devtools)
library(roxygen2)

# Step 1: Create your package
setwd("/Users/premithapagadala/Documents/R_Programming_Fall2025_Pagadala_Premitha/Assignments/Assignment_10_Create_Package")
create("Premitha")
setwd("Premitha") #working directory inside your package

# Step 2: Write DESCRIPTION file
desc_lines <- '
Package: Premitha
Title: Simple Tools for Streamlined Data Analysis
Version: 0.0.0.9000
Authors@R: 
    person("Premitha", "Pagadala", 
           email = "premithapagadala@gmail.com", 
           role = c("aut", "cre"))
Description: 
    The Premitha package provides simple, easy-to-use helper functions 
    that make common data analysis tasks faster and more efficient. 
    It is designed for students, researchers, and analysts who want 
    to perform exploratory data analysis and visualization quickly 
    without repetitive coding.
Depends: R (>= 3.1.2)
Imports: 
    ggplot2,
    dplyr
License: CC0
LazyData: true
URL: https://github.com/premitha27/R_Programming_Fall2025_Pagadala_Premitha
BugReports: https://github.com/premitha27/R_Programming_Fall2025_Pagadala_Premitha/issues
Suggests: knitr, rmarkdown
Encoding: UTF-8
Roxygen: list(markdown = TRUE)
RoxygenNote: 7.3.3
'

writeLines(desc_lines, "DESCRIPTION")

# Step 3: Create your first R function file 
# Create file in R/ folder and write your function
dir.create("R", showWarnings = FALSE)

function_code <- '
#\' Quick Summary and Visualization
#\'
#\' Generates a summary and a histogram for a numeric variable in a data frame.
#\' @param data A data frame containing the variable.
#\' @param var The name of the numeric variable (unquoted).
#\' @return Prints summary statistics and displays a histogram.
#\' @examples
#\' quick_summary_plot(mtcars, mpg)
#\' @export
quick_summary_plot <- function(data, var) {
  variable <- dplyr::pull(data, {{ var }})
  
  cat("Summary statistics for", deparse(substitute(var)), ":\n")
  print(summary(variable))
  
  print(
    ggplot2::ggplot(data, ggplot2::aes(x = {{ var }})) +
      ggplot2::geom_histogram(binwidth = diff(range(variable))/30, 
                              fill = "skyblue", color = "white") +
      ggplot2::theme_minimal() +
      ggplot2::labs(title = paste("Histogram of", deparse(substitute(var))))
  )
}
'

writeLines(function_code, "R/quick_summary_plot.R")

# Step 4: Document, check, and build package
document()  # Generates NAMESPACE and man/ documentation
check()     # Validates package structure
build()     # Creates .tar.gz file (installable package)

# Step 5: Install your package from GitHub 
# (After pushing it to GitHub)
# devtools::install_github("premitha-pagadala/Premitha")

# Step 6: Test your function
library(Premitha)
quick_summary_plot(mtcars, mpg)