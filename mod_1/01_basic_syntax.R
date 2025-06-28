#########################################
# 01_basic_syntax.R
# Introduction to R syntax and variables
#########################################

# This is a comment. R ignores any text after the '#' symbol.

# ---- Variable Assignment ----
# Variables can be assigned using the <- or = symbols
x <- 5
y = 10
name <- "R"
is_fun <- TRUE

# Print output
print(x)
print(name)

# View by typing the name
x
name

# ---- Basic Arithmetic ----
a <- 3 + 2
b <- 4 * 5
c <- 10 / 2
d <- 2^3

a; b; c; d

# ---- Built-in Functions ----
sqrt(16)
abs(-7)
round(3.14159, 2)

# ---- Environment ----
ls()
rm(a)
