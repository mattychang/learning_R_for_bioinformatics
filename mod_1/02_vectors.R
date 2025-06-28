##################################################
# 02_vectors.R
##################################################

##################################################
# Creating vectors
##################################################

# ---- Use c() to combine values, all values in a vector must be the same type ----
nums <- c(1, 2, 3, 4, 5)
chars <- c("apple", "banana", "cherry")
logicals <- c(TRUE, FALSE, TRUE)

##################################################
# Indexing and slicing
##################################################

x <- c(10, 20, 30, 40, 50)

# ---- Index by position ----
x[1]      # first element
x[3:5]    # third through fifth
x[-2]     # all except second

# ---- Replace elements ----
x[2] <- 25
x

# ---- Out of bounds ----
x[10]     # returns NA

##################################################
# Vector operations
##################################################

x <- c(1, 2, 3)
y <- c(10, 20, 30)

# ---- Arithmetic is element-wise ----
x + y
x * 2
y / x

# ---- Combine with functions ----
sum(x)
mean(y)
sqrt(y)

##################################################
# Logical filtering
##################################################

ages <- c(15, 22, 30, 17, 45)

# ---- Logical test ----
ages > 18

# ---- Filter with brackets ----
ages[ages > 18]

# ---- Combine conditions ----
ages[ages > 18 & ages < 40]

# ---- which() gives index positions ----
which(ages == 17)
