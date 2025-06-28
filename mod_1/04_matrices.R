##################################################
# 04_matrices.R
##################################################

##################################################
# Creating matrices from scratch
##################################################

# ---- Fill by column (default) ----
mat1 <- matrix(1:6, nrow = 2)
print(mat1)

# ---- Fill by row ----
mat2 <- matrix(1:6, nrow = 2, byrow = TRUE)
print(mat2)

# ---- Set row and column names ----
rownames(mat2) <- c("row1", "row2")
colnames(mat2) <- c("A", "B", "C")
mat2

##################################################
# Accessing and indexing elements in the matrix
##################################################

mat <- matrix(1:9, nrow = 3, byrow = TRUE)
rownames(mat) <- c("gene1", "gene2", "gene3")
colnames(mat) <- c("sample1", "sample2", "sample3")

# ---- Access element at row 1, col 2 ----
mat[1, 2]

# ---- Access entire row or column ----
mat[2, ]       # second row
mat[ , 3]      # third column

# ---- Assign new value ----
mat[1, 1] <- 99
mat

##################################################
# Matrix math
##################################################

# ---- Create two matrices ----
A <- matrix(1:4, nrow = 2)
B <- matrix(5:8, nrow = 2)

# ---- Element-wise addition and multiplication ----
A + B
A * B

# ---- Matrix multiplication ----
A %*% t(B)   # %*% is matrix product

# ---- Apply function by row or column ----
mat <- matrix(1:6, nrow = 2)
rowSums(mat)
colMeans(mat)

# ---- Transpose ----
t(mat)

##################################################
# Converting from data frame
##################################################

# Create a simple data frame
df <- data.frame(
  gene = c("Gene1", "Gene2", "Gene3"),
  Sample1 = c(2.3, 4.1, 3.7),
  Sample2 = c(1.8, 3.5, 2.9)
)

# ---- Convert to matrix (numeric only) ----
mat <- as.matrix(df[ , -1])     # remove gene name column
rownames(mat) <- df$gene

print(mat)
typeof(mat)     # "double"
