# Assignment #8: Input/Output, String Manipulation, and the plyr Package

**Blog Link:** [Assignment 7 Blog Post](https://premithapagadala.blogspot.com/2025/10/assignment-7.html)

## Description
This assignment demonstrates how to perform **data input/output operations**, **grouped summarization**, and **string filtering** in R using the **plyr** package.  
We import a dataset, compute average grades by gender, filter names with the letter “i,” and export results to text and CSV files.


## How to Run
1. Open the script file `Assignment_08.R` in RStudio.  
2. Run all lines of code or use `source("Assignment_08.R")`.  
3. Confirm output files (gender_mean.txt, i_students.csv, i_students_full.csv) appear in your working directory 

## Packages
- pryr for grouped summarization)

## Data
- Input: Assignment 6 dataset (CSV or tab-delimited)
- Read with:
student6 <- read.table(
  file.choose(),
  header = TRUE,
  sep = ",",
  stringsAsFactors = FALSE
)
- Variables:
Name (character)
Sex (factor or character)
Grade (numeric)

## Notes
- Input/Output: read.table() and write.table() support flexible formats.
- String Filtering: grepl() enables regex matching for pattern searches.
- Grouping: ddply() simplifies split-apply-combine operations.
- Reproducibility: All outputs are saved in the working directory for review.
- Learning Outcome: Practice file I/O, string operations, and summarization using plyr.