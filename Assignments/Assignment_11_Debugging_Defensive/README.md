# Assignment 11: Debugging Turkey Outlier Function in R

**Blog Link:** [Assignment 11 Blog Post](https://premithapagadala.blogspot.com/2025/11/assignment-11.html)

## Description
The original function tukey_multiple() is intended to flag rows in a numeric matrix where all values are outliers according to the Tukey 1.5 × IQR rule.
The assignment demonstrates identifying errors, fixing logical bugs, adding defensive checks, and documenting the debugging workflow.


## How to Run
1. Open the project file `Assignment_11_debug_fixed.R` in RStudio.  
2. Run all lines of code or use `source("Assignment_11_debug_fixed.R")`.  
3. The console will display the original error message from the buggy function, the test matrix data and the corrected output using the corrected_tukey() function.

## Packages
- **Base R** 

## Data
- **Source:** Randomly generated numeric matrix using rnorm() or any user-supplied numeric matrix  
- **Example:** test_mat 10 × 5 matrix

## Notes
- **corrected_tukey()**: Identifies rows where all elements are outliers according to the Tukey rule.
- **Bug Fix**: Replaced && (scalar logical AND) with & (element-wise logical AND) to fix the error.
- **Defensive Checks**: Ensures the input is a numeric matrix; provides informative errors for invalid input.
- **Debugging Workflow**: Includes reproducing the error, diagnosing the bug, correcting the function, validating outputs, and documenting results.
- **Output**: Returns a logical vector of length equal to the number of rows in the input matrix.