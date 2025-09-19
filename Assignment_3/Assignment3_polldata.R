# Step 1: Define data
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)
CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)
# Step 2: Create data frame
df_polls <- data.frame(Name, ABC_poll, CBS_poll)
# Step 3: Inspect data structure and first few rows
str(df_polls)
head(df_polls)
# Step 4: Summary statistics
mean(df_polls$ABC_poll) # Mean ABC poll
median(df_polls$CBS_poll) # Median CBS poll
range(df_polls[, c("ABC_poll","CBS_poll")]) # Range for both polls
# Step 5: Add difference column
df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_pol
df_polls
# Step 6: Visualization with ggplot2
install.packages("ggplot2")
install.packages("tidyr")
library(tidyr)
df_long <- pivot_longer(df_polls, cols = c("ABC_poll", "CBS_poll"),
                        names_to = "Poll", values_to = "Value")
library(ggplot2)
ggplot(df_long, aes(x = Name, y = Value, fill = Poll)) +
  geom_col(position = "dodge") +
  labs(title = "Comparison of 2016 Poll Results",
       x = "Candidate", y = "Poll Percentage",
       fill = "Poll Source") +
  theme_minimal()
