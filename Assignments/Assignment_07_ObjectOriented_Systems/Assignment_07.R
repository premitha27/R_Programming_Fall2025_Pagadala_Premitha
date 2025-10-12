# Load dataset
data("PlantGrowth")
head(PlantGrowth)
# Describe structure
str(PlantGrowth)

# Summarize dataset
summary(PlantGrowth)
# Basic plot of PlantGrowth data
plot(PlantGrowth$group, PlantGrowth$weight,
     main = "PlantGrowth Weight by Group",
     xlab = "Group",
     ylab = "Weight",
     col = c("red", "green", "blue"))

# Create an S3 object
s3_obj_pg <- list(weight ~ group, data = PlantGrowth)
print(s3_obj_pg)
# Assign S3 class
class(s3_obj_pg) <- "PlantExperiment"
print(s3_obj_pg)
print(class(s3_obj_pg))
# Check object type
install.packages("pryr")
library(pryr)
otype(s3_obj_pg)   # Object type
typeof(s3_obj_pg)  # Base type ("list")

# Define S4 class
setClass(
  "PlantExperimentS4",
  slots = c(weight = "numeric", group = "character")
)
# Create an instance
s4_obj_pg <- new("PlantExperimentS4", weight = 5.2, group = "ctrl")
# Check class system
class(s4_obj_pg)
isS4(s4_obj_pg)  # TRUE
print(s4_obj_pg)
# Base type and attributes
typeof(s4_obj_pg)       # "S4"
attributes(s4_obj_pg)   # Slots
is.object(s4_obj_pg)    # TRUE
