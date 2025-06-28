###########################################
# 03_basic_operations.R
# Arithmetic and logical operations in R
###########################################

# ---- Arithmetic Operators ----
a <- 10 + 5    # addition
b <- 10 - 3    # subtraction
c <- 4 * 2     # multiplication
d <- 20 / 5    # division
e <- 2^3       # exponent
f <- 10 %% 3   # modulo (remainder)

a; b; c; d; e; f

# ---- Logical Operators ----
x <- 5
x > 3   # TRUE
x == 5  # TRUE
x != 4  # TRUE
x <= 10 # TRUE

# ---- Combine with logical values ----
TRUE & FALSE  # AND
TRUE | FALSE  # OR
!TRUE         # NOT
