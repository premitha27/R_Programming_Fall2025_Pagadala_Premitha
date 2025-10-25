# Assignment 9: Visualization in R – Base Graphics, Lattice, and ggplot2

**Blog Link:** [Assignment 9 Blog Post](https://premithapagadala.blogspot.com/2025/10/assignment-9.html)

## Description
This assignment demonstrates three major R visualization systems: **Base graphics**, **Lattice**, and **ggplot2**.  
Using the **Breast Cancer Wisconsin Diagnostic (brca)** dataset from the `dslabs` package, we explore how tumor diagnosis (Benign vs Malignant) relates to numeric features such as `radius_mean` and `texture_mean`.  
The objective is to compare syntax, workflow, and visual clarity across these systems.

## How to Run
1. Open **RStudio** and set your working directory.
2. Install required packages (if not already installed)
install.packages(c("dslabs", "lattice", "ggplot2"))
3. Load the dataset and packages
4. Run the script `Assignment_09.R` to generate all plots:
   - Base R scatter plots, histograms, boxplots
   - Lattice scatter, density, and boxplots
   - ggplot2 scatter plots, histograms, faceted plots
5. Plots are displayed in the **Plots** pane; optional export to files can be added.

## Packages
- **dslabs** — for the `brca` dataset  
- **lattice** — formula-based visualization system  
- **ggplot2** — Grammar-of-Graphics system for layered plots  

## Data
- **Source:** `dslabs` package (`brca`)  
- **Description:** 569 tumor samples; 30 numeric predictors (`brca$x`) and one categorical diagnosis variable (`brca$y`) with levels "B" (Benign) and "M" (Malignant)  
- **Location:** Loaded directly from the package in R  

## Notes
- **Base Graphics:** Quick and flexible for exploratory plots but limited in multi-panel layouts and styling.  
- **Lattice:** Excellent for conditioned plots and paneling; handles grouped data elegantly.  
- **ggplot2:** Highly flexible, professional-looking, layered plots; supports faceting and themes for publication-quality visualizations.  
- **Comparison:** ggplot2 provides the best combination of clarity, customization, and minimal code for complex visualizations.  
- **Learning Outcome:** Understanding differences in syntax, workflow, and aesthetics between Base, Lattice, and ggplot2 systems.  