# Assignment 10: Building Your Own R Package – Premitha

**Blog Link:** [Assignment 10 Blog Post](hhttps://premithapagadala.blogspot.com/2025/11/assignment-10.html)

## Description
The **Premitha** R package is designed to simplify common data analysis and visualization tasks.  
It provides lightweight functions to quickly explore numeric datasets, generate summary statistics, and create visualizations without writing repetitive code.  
This assignment demonstrates R package creation, documentation, and testing using a custom function `quick_summary_plot()`.


## How to Run
1. **Install required tools** (once):
```r
install.packages(c("devtools", "roxygen2"))
library(devtools)
library(roxygen2)
```
2. **Clone or set working directory** to your package folder:
```r
setwd("/path/to/Assignment_10/Premitha")
```
3. **Build and document the package**:
```r
document()  # Generates documentation and NAMESPACE
check()     # Validates the package
build()     # Creates installable .tar.gz
```
4. **Install from GitHub** (after pushing the package):
```r
devtools::install_github("premitha-pagadala/Premitha")
```
5. **Load the package and test function**:
```r
library(Premitha)
quick_summary_plot(mtcars, mpg)
```
This prints summary statistics for `mpg` and displays a histogram.

## Packages
- **devtools** — for building and installing packages  
- **roxygen2** — for documentation and NAMESPACE generation  
- **ggplot2** — plotting histograms  
- **dplyr** — data manipulation (pulling variables)  

## Data
- **Source:** Any user-supplied data frame  
- **Example:** `mtcars` used for demonstration  
- **Location:** Loaded directly in R; no external files required  

## Notes
- **quick_summary_plot():** Summarizes a numeric variable and displays a histogram.  
- **R Package Essentials:** Includes proper `DESCRIPTION` metadata, `R/` folder for functions, and roxygen2 documentation.  
- **Reproducibility:** No external data required; package works on any numeric dataset in a data frame.  
- **Learning Outcome:** Demonstrates package structure, documentation, function export, and basic EDA automation in R.  
