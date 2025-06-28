##################################################
# 02_tidyr_basics.R
##################################################

library(tidyr)
library(dplyr)
library(readr)

##################################################
# 1. pivot_longer(): Wide → Long
##################################################

grades_wide <- read_csv("grades_wide.csv")

grades_long <- grades_wide %>%
  pivot_longer(
    cols = starts_with("Test"),
    names_to = "Test",
    values_to = "Score"
  )

print(grades_long)

##################################################
# 2. pivot_wider(): Long → Wide
##################################################

grades_wide_again <- grades_long %>%
  pivot_wider(
    names_from = Test,
    values_from = Score
  )

print(grades_wide_again)

##################################################
# 3. separate(): Split one column into multiple
##################################################

dates <- read_csv("dates.csv")
print(dates)

dates_sep <- dates %>%
  separate(Date, into = c("Year", "Month", "Day"), sep = "-")

print(dates_sep)

##################################################
# 4. unite(): Merge multiple columns into one
##################################################

dates_united <- dates_sep %>%
  unite("Full_Date", Year:Day, sep = "-")

print(dates_united)

##################################################
# 5. drop_na(): Remove rows with missing values
##################################################

students_na <- read_csv("students_na.csv")
students_na
drop_na(students_na)

##################################################
# 6. replace_na(): Replace missing values
##################################################

replace_na(students_na, list(GPA = 0))

##################################################
# 7. fill(): Fill missing values downward
##################################################

survey <- read_csv("survey.csv")
survey
fill(survey, Day)
