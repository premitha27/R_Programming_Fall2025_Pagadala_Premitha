# Assignment 10: Building Your Own R Package – Premitha

**Blog Link:** [Assignment 11 Blog Post](https://premithapagadala.blogspot.com/2025/11/assignment-11.html)

## Description
The original function tukey_multiple() is intended to flag rows in a numeric matrix where all values are outliers according to the Tukey 1.5 × IQR rule.
The assignment demonstrates identifying errors, fixing logical bugs, adding defensive checks, and documenting the debugging workflow.


## How to Run
1. Open the project file `Assignment_11_debug_fixed.R` in RStudio.  
2. Run all lines of code or use `source("Assignment_11_debug_fixed.R")`.  
3. The console will display the original error message from the buggy function, the test matrix data and the corrected output using the corrected_tukey() function.

## Packages
- **Base R** — all core functionality for matrix manipulation and logical operations

## Data
- **Source:** Randomly generated numeric matrix using rnorm() or any user-supplied numeric matrix  
- **Example:** test_mat 10 × 5 matrix

## Notes
- **quick_summary_plot():** Summarizes a numeric variable and displays a histogram.  
- **R Package Essentials:** Includes proper `DESCRIPTION` metadata, `R/` folder for functions, and roxygen2 documentation.  
- **Reproducibility:** No external data required; package works on any numeric dataset in a data frame.  
- **Learning Outcome:** Demonstrates package structure, documentation, function export, and basic EDA automation in R.  