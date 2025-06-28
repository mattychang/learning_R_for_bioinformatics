##############################################
# 02_vectors.R
# Vectors
##############################################

# ---- Create a vector ----
scores <- c(90, 85, 88, 76, 95)

# ---- Vector arithmetic ----
scores + 5     # add 5 to each element
scores * 2     # multiply all by 2

# ---- Vector indexing ----
scores[1]      # first element
scores[3:5]    # third through fifth elements
scores[-2]     # all except the second

# ---- Naming vector elements ----
names(scores) <- c("Alice", "Bob", "Chloe", "David", "Ella")
scores["Alice"]
scores[c("Alice", "Ella")]

# ---- Combine vectors ----
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
combined <- c(v1, v2)
combined
