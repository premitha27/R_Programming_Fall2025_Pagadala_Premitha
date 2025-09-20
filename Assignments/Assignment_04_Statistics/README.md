# Assignment 4 – Visualizing and Interpreting Hospital Patient Data  

**Blog Link:** [Assignment 4 Blog Post](https://premithapagadala.blogspot.com/2025/09/assignment-4.html)

## Description
This assignment focuses on cleaning and visualizing a hospital patient dataset in R. Tasks include handling missing values, converting categorical variables to numeric codes, and creating side-by-side boxplots and histograms. The goal is to explore relationships between patient vitals (blood pressure, visit frequency) and physician assessments or final decisions. The script also supports interpretation of patterns, outliers, and potential clinical implications.  

## How to Run
1. Open the project file `Assignment_04.R` in RStudio.  
2. Run all lines of code or use `source("Assignment_04.R")`.  
3. The console will display data summaries, and plots (boxplots and histograms) will appear in the Plots pane. PNG versions can be saved using `png()` if needed.  

## Packages
- None required for base R visualizations.    

## Data
- **Source:** Provided dataset from the assignment instructions.  
- **Location:** Defined in the script as vectors: `Frequency`, `BloodPressure`, `FirstAssess`, `SecondAssess`, `FinalDecision`.  

## Notes
- One row with missing `FirstAssess` is removed using `na.omit()`.  
- Boxplots show blood pressure distributions by assessment and final decision.  
- Histograms highlight overall distributions and potential outliers.  
- Made-up data may not reflect real clinical patterns; interpretations are illustrative.  