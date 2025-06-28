##################################################
# 02_vectors.R
##################################################

##################################################
# Creating vectors
##################################################

# ---- Use c() to combine values ----
nums <- c(1, 2, 3, 4, 5)
chars <- c("apple", "banana", "cherry")
logicals <- c(TRUE, FALSE, TRUE)

# ---- All values must be the same type ----
mixed <- c(1, "apple", TRUE)
mixed         # all become character
typeof(mixed)

# ---- Sequences ----
1:5
seq(10, 20, by = 2)
rep("hi", 3)

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
# Named vectors
##################################################

scores <- c(95, 87, 78)
names(scores) <- c("Alice", "Bob", "Chris")

# ---- Access by name ----
scores["Alice"]
scores[c("Bob", "Chris")]

# ---- Rename elements ----
names(scores)[2] <- "Bobby"
scores

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
