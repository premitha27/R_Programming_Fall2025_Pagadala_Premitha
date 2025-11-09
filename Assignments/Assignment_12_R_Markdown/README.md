# Assignment 12: Introduction to R Markdown

**Blog Link:** [Assignment 12 Blog Post](https://premithapagadala.blogspot.com/2025/11/assignment-12.html)

## Description
This assignment demonstrates the use of **R Markdown** to create reproducible reports integrating **narrative text**, **code**, and **output**. The workflow focuses on bioinformatics data analysis using **RNA-Seq datasets** from Bioconductor.
The key objectives were:
- Learn the basics of R Markdown authoring and document structure.
- Embed R code, narrative text, and LaTeX math in a single document.
- Compile an R Markdown document to HTML and compare source vs. output.
- Reflect on the workflow and how it supports reproducible analysis.

## Files in the Repository
- `Assignment_12.Rmd` — R Markdown source file containing the full analysis, narrative, and LaTeX math.
- `Assignment_12.html` — Rendered HTML report generated from the `.Rmd`.
- `styles.css` — Custom CSS for styling the HTML output.
- `README.md` — This file providing project overview and instructions.

## How to Run
1. Clone or download the repository.
2. Open `Assignment_12.Rmd` in RStudio.
3. Knit to HTML using the **Knit** button.
4. Open the resulting `Assignment_12.html` in a browser to view formatted output and plots.

## Notes
- Make sure all required packages are installed (`DESeq2`, `airway`, `ggplot2`, `tidyverse`).  
- The custom CSS file `styles.css` is included for styling; it must be in the same folder as the `.Rmd` to be applied.