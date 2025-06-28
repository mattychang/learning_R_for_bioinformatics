#######################################
# 02_data_types.R
# Understanding data types in R
#######################################

# ---- Numeric ----
num <- 3.14
typeof(num)

# ---- Integer ----
int <- 5L
typeof(int)

# ---- Character (String) ----
word <- "Hello, R!"
typeof(word)

# ---- Logical (Boolean) ----
flag <- TRUE
typeof(flag)

# ---- Complex ----
z <- 1 + 2i
typeof(z)

# ---- Check data type ----
is.numeric(num)
is.character(word)
is.logical(flag)

# ---- Convert data types ----
as.character(num)
as.numeric("3.14")
as.logical(1)
