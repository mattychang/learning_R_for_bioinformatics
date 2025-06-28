##################################################
# 03_ggplot2_basics.R
##################################################

library(ggplot2)
library(readr)
library(dplyr)

# ---- Load data ----
students <- read_csv("student_info.csv")

##################################################
# 1. Scatter Plot: GPA vs Age with color and trend
##################################################

ggplot(students, aes(x = Age, y = GPA, color = Major)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed", color = "black") +
  labs(
    title = "GPA vs Age by Major",
    subtitle = "With linear trend line",
    x = "Age (years)",
    y = "GPA",
    color = "Major"
  ) +
  theme_minimal()

##################################################
# 2. Bar Plot: Count of Students by Major
##################################################

ggplot(students, aes(x = Major, fill = Major)) +
  geom_bar(width = 0.6) +
  labs(
    title = "Number of Students by Major",
    x = "Major",
    y = "Count"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

##################################################
# 3. Box Plot: GPA by Major
##################################################

ggplot(students, aes(x = Major, y = GPA, fill = Major)) +
  geom_boxplot(width = 0.5, outlier.color = "red", outlier.shape = 16) +
  labs(
    title = "GPA Distribution by Major (Boxplot)",
    x = "Major",
    y = "GPA"
  ) +
  theme_minimal() +
  theme(legend.position = "none")
