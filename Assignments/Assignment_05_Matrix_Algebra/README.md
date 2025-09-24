## Assignment #5: Matrix Algebra in R  

**Blog Link:** [Assignment 5 Blog Post](https://premithapagadala.blogspot.com/2025/09/assignment-6.html)

### Description
This assignment focuses on matrix algebra in R. The main goals are:
- Create and inspect matrices  
- Compute matrix inverses and determinants  
- Handle non‑square matrices and errors gracefully  
- Document results clearly  

This helps strengthen understanding of linear algebra in R and introduces error handling with `tryCatch()`.

### How to Run
1. Install and load any required packages (none required for this assignment — base R is sufficient).  
2. Open RStudio or R console.  
3. Load the provided script (`Assignment_05.R`) from the repository.  
4. Run the script to see outputs in the console. 

## Packages
- None required; all operations use base R functions.  

## Data
- No external datasets are required; matrices are defined directly in the script.

## Notes
- **Matrix Creation:** Use `matrix()` to create matrices from a sequence of values. Dimensions must be specified correctly with `nrow` or `ncol`.
- **Square Matrices:** Functions like `solve()` and `det()` require square matrices (same number of rows and columns).
- **Inverse Matrix:** `solve(A)` returns the inverse of matrix A if it is square and non‑singular.
- **Determinant:** `det(A)` computes the determinant of A; a determinant of zero indicates a singular matrix (no inverse exists).
- **Error Handling:** `tryCatch()` is useful to capture and handle errors without stopping the script when operations fail (e.g., non‑square matrices like B).