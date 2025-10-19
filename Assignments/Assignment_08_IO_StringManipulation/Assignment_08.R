# Step 1: Import dataset into R
# Choose file interactively or specify directly
student6 <- read.table(
  file.choose(),    
  header = TRUE,
  sep = ",",
  stringsAsFactors = FALSE
)
# Step 2: Install and load plyr package
install.packages("plyr")
library(plyr)
# Compute mean Grade by Sex
gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)
# Step 3: Write the grouped means to a text file
write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep = "\t",
  row.names = FALSE
)
# Step 4: Filter names containing the letter "i" (case-insensitive)
i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)
# Step 5: Write only the names to a CSV file
write.csv(
  i_students$Name,
  file = "i_students.csv",
  row.names = FALSE,
  quote = FALSE
)
# Step 6: Write the full filtered dataset to another CSV
write.csv(
  i_students,
  file = "i_students_full.csv",
  row.names = FALSE
)
# Step 7: Confirm files exist in working directory
cat("Files successfully created in:", getwd(), "\n")
list.files(pattern = "gender_mean|i_students")