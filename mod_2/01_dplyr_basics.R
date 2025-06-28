##################################################
# 01_dplyr_basics.R
##################################################

library(dplyr)
library(readr)

# ---- Load sample dataset ----
students <- read_csv("student_info.csv")

##################################################
# 1. select(): Choose columns
##################################################

# Keep only Name, GPA, and Major
select(students, Name, GPA, Major)

##################################################
# 2. filter(): Keep specific rows
##################################################

# Students with GPA >= 3.5
filter(students, GPA >= 3.5)

# Chemistry majors who are 18 or older
filter(students, Major == "Chemistry", Age >= 18)

##################################################
# 3. arrange(): Sort rows
##################################################

# Sort by GPA (lowest to highest)
arrange(students, GPA)

# Sort by GPA (highest to lowest)
arrange(students, desc(GPA))

##################################################
# 4. mutate(): Add or modify columns
##################################################

# Add Pass/Fail and Age_Group columns
students <- mutate(
  students,
  Passed = GPA >= 3.0,
  Age_Group = if_else(Age >= 18, "Adult", "Minor")
)

# View modified data
head(students)

##################################################
# 5. summarise() + group_by(): Aggregate data
##################################################

# Average GPA and count by Age_Group
students %>%
  group_by(Age_Group) %>%
  summarise(
    avg_GPA = mean(GPA, na.rm = TRUE),
    total_students = n()
  )

# Count how many students per Major who passed
students %>%
  filter(Passed) %>%
  group_by(Major) %>%
  summarise(count = n())

##################################################
# 6. distinct(): Unique values
##################################################

# List of unique majors
distinct(students, Major)

##################################################
# 7. Pipe workflow example: 
##################################################

students %>%
  filter(Passed) %>%
  select(Name, Major, GPA) %>%
  arrange(desc(GPA))

students
