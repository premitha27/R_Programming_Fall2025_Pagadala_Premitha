# Load libraries and dataset
install.packages("dslabs")
library(dslabs)
data("brca")
# 'brca$y' contains the diagnosis (Benign/ Malignant)
# 'brca$x' is a matrix of 30 numeric features
head(brca$y)
str(brca$x)
# Combine into one data frame for easy plotting
df <- data.frame(diagnosis = brca$y, brca$x)
head(df)

# Base R Graphics
# Scatter plot: Texture vs Radius, color-coded by diagnosis
plot(df$radius_mean, df$texture_mean,
     col = ifelse(df$diagnosis == "M", "red", "blue"),
     pch = 19,
     xlab = "Mean Radius",
     ylab = "Mean Texture",
     main = "Base R: Texture vs Radius by Diagnosis")
legend("topright", legend = c("Benign", "Malignant"),
       col = c("blue", "red"), pch = 19)
# Histogram: Distribution of Radius (Malignant only)
hist(df$radius_mean[df$diagnosis == "M"],
     main = "Base R: Radius Distribution (Malignant)",
     xlab = "Mean Radius", col = "pink", breaks = 20)
library(lattice)
# Boxplot: Comparing radius_mean between Benign and Malignant
boxplot(radius_mean ~ diagnosis, data = df,
        main = "Base R: Boxplot of Mean Radius by Diagnosis",
        xlab = "Diagnosis", ylab = "Mean Radius",
        col = c("lightblue", "lightpink"))

# Lattice Graphics
# Conditional scatter plot (small multiples)
xyplot(texture_mean ~ radius_mean | diagnosis,
       data = df,
       layout = c(2,1),
       main = "Lattice: Texture vs Radius by Diagnosis",
       xlab = "Mean Radius",
       ylab = "Mean Texture",
       col = "darkgreen",
       pch = 20)
# Box-and-whisker plot
bwplot(radius_mean ~ diagnosis,
       data = df,
       main = "Lattice: Radius by Diagnosis",
       xlab = "Diagnosis",
       ylab = "Mean Radius",
       fill = "lightblue")
# Density plot for smoother comparison
densityplot(~ radius_mean, groups = diagnosis,
            data = df, auto.key = TRUE,
            main = "Lattice: Density of Mean Radius by Diagnosis",
            plot.points = FALSE)

# ggplot2 Visualizations
# Scatter plot with linear regression line
library(ggplot2)
ggplot(df, aes(x = radius_mean, y = texture_mean, color = diagnosis)) +
  geom_point(size = 2, alpha = 0.6) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "ggplot2: Texture vs Radius by Diagnosis",
       x = "Mean Radius",
       y = "Mean Texture") +
  theme_minimal()
# Faceted histogram
ggplot(df, aes(x = radius_mean, fill = diagnosis)) +
  geom_histogram(binwidth = 1, color = "black", alpha = 0.6) +
  facet_wrap(~ diagnosis, scales = "free_y") +
  labs(title = "ggplot2: Radius Distribution by Diagnosis",
       x = "Mean Radius",
       y = "Count") +
  theme_minimal() +
  theme(legend.position = "none")

