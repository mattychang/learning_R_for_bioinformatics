##################################################
# 03_data_frames.R
##################################################

##################################################
# Creating data frames from scratch
##################################################

# ---- Vectors first ----
name <- c("Alice", "Bob", "Charlie")
age <- c(23, 30, 25)
is_student <- c(TRUE, FALSE, TRUE)

# ---- Combine into a data frame ----
df <- data.frame(
  name = name,
  age = age,
  is_student = is_student
)

print(df)
str(df)    # structure
summary(df)  # quick stats

##################################################
# Accessing elements in the data frame
##################################################

# ---- Access columns ----
df$name
df[["age"]]
df[ , "is_student"]

# ---- Access rows ----
df[1, ]      # first row
df[1:2, ]    # first two rows

# ---- Access single value ----
df[2, "age"]   # Bob’s age

##################################################
# Modifying and filtering data frames
##################################################

# ---- Modify existing value ----
df$age[2] <- 31

# ---- Add new column ----
df$city <- c("NY", "LA", "Chicago")

# ---- Filter rows ----
df[df$age > 25, ]
df[df$is_student == TRUE, ]

df
