# Assignment 7: Exploring R’s Object-Oriented Systems (S3 & S4)

**Blog Link:** [Assignment 7 Blog Post](https://premithapagadala.blogspot.com/2025/09/assignment-6_23.html)

## Description
This assignment explores R’s two main object-oriented programming (OOP) systems — **S3** and **S4**.  
Using the built-in **PlantGrowth** dataset, we:
- Applied generic functions (`print()`, `summary()`, `plot()`),
- Created and inspected **S3** and **S4** objects, and
- Compared their behavior and structure in R’s method dispatch system.


## How to Run
1. Open the script file `Assignment_07.R` in RStudio.  
2. Run all lines of code or use `source("Assignment_07.R")`.  
3. The console will display the results of matrix operations and the constructed matrices.  

## Packages
- pryr (for checking object types)

## Data
- Dataset: PlantGrowth (built-in R dataset)
- Description: Contains 30 plant weight observations across three treatment groups (ctrl, trt1, trt2).

## Notes
- **S3 System:** Informal and flexible. Classes assigned with class(); no strict structure required.
- **S4 System:** Formal and strict. Classes defined with setClass() and type-enforced slots.
- **Generic Functions:** print(), summary(), and others dispatch methods based on object class.
- **Learning Outcome:** Understand how R’s OOP systems differ in flexibility, validation, and method dispatch.