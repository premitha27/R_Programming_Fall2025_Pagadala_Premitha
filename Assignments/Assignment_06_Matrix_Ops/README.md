# Assignment 6: Matrix Operations and Construction

**Blog Link:** [Assignment 6 Blog Post](https://premithapagadala.blogspot.com/2025/09/assignment-6.html)


## Description
This assignment demonstrates fundamental matrix operations in R, including addition, subtraction, and construction of diagonal and custom block-structured matrices. The tasks focus on:  

- Performing basic matrix arithmetic (addition and subtraction)  
- Creating diagonal matrices using `diag()`  
- Constructing a custom 5×5 block-structured matrix programmatically  

## How to Run
1. Open the script file `Assignment_06.R` in RStudio.  
2. Run all lines of code or use `source("Assignment_06.R")`.  
3. The console will display the results of matrix operations and the constructed matrices.  

## Packages
- None required; all operations use base R functions.  

## Data
- No external datasets are required; matrices are defined directly in the script.

## Notes
- **Matrix Arithmetic:** A + B and A - B perform element-wise addition and subtraction; both matrices must have the same dimensions.
- **Diagonal Matrix:** diag(c(4,1,2,3)) creates a 4×4 matrix with the specified values on the diagonal and zeros elsewhere.
- **Custom Matrix Construction:** The 5×5 matrix is built using diag() and cbind()/rbind() to combine the diagonal with repeated values for a block-structured layout.
- **Reproducibility:** All matrices are defined in the script; no external data is needed.
- **Learning Outcome:** Helps understand indexing, matrix arithmetic, and programmatic matrix construction in R.