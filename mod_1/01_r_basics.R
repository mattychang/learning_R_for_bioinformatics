##############################################
# 01_r_basics.R
# Comments, arithmetic, variables and assignment, data types, built-in mathematical functions, environment management, logical operations
##############################################

# ---- Comments ----
# Use the '#' symbol to write comments
# Comments are ignored by R and help explain your code

# ---- Arithmetic ----
# R works as a calculator
2 + 3
8 / 2
(3 + 5) * 2

# ---- Variables & Assignment ----
# Use '<-' or '=' to assign values
x <- 10
y = 5
z <- x + y
z

# ---- Data Types ----
name <- "learning_R"     # character
pi_val <- 3.14           # numeric
flag <- TRUE             # logical
count <- 5L              # integer
comp <- 1 + 2i           # complex

# Check types
typeof(flag)
is.character(name)

# Type conversion
as.numeric("42")      # converts string to number
as.logical(0)         # FALSE

# ---- Built-in Functions ----
round(pi_val, 1)
sqrt(49)
log(100, base = 10)

# ---- Environment Management ----
ls()         # list all objects
rm(flag)     # remove one
rm(list = ls())  # clear all (be careful!)

# ---- Logical Operations ----
a <- 7
b <- 3
a > b
a == 7
(a > 5) & (b < 5)
