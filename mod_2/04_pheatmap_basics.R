##################################################
# 04_pheatmap_basics.R
##################################################

library(pheatmap)

##################################################
# 1. Create a numeric matrix
##################################################

# Example gene expression matrix (rows = genes, cols = samples)
expr_matrix <- matrix(
  data = c(5, 3, 6, 8,
           7, 4, 5, 9,
           3, 2, 4, 6,
           9, 6, 8, 10,
           4, 3, 3, 5),
  nrow = 5,
  byrow = TRUE
)

rownames(expr_matrix) <- c("GeneA", "GeneB", "GeneC", "GeneD", "GeneE")
colnames(expr_matrix) <- c("Sample1", "Sample2", "Sample3", "Sample4")

##################################################
# 2. Basic heatmap
##################################################

pheatmap(expr_matrix,
         main = "Basic Heatmap")

##################################################
# 3. Heatmap with clustering disabled
##################################################

pheatmap(expr_matrix,
         cluster_rows = FALSE,
         cluster_cols = FALSE,
         main = "No Clustering")

##################################################
# 4. Add sample annotation
##################################################

# Annotation data frame for samples
sample_annot <- data.frame(
  Condition = c("Control", "Control", "Treatment", "Treatment"),
  row.names = colnames(expr_matrix)
)

pheatmap(expr_matrix,
         annotation_col = sample_annot,
         main = "Heatmap with Sample Annotation")

##################################################
# 5. Customize colors
##################################################

pheatmap(expr_matrix,
         color = colorRampPalette(c("navy", "white", "firebrick3"))(50),
         main = "Custom Color Gradient")

##################################################
# 6. Scale the data by row
##################################################

pheatmap(expr_matrix,
         scale = "row",
         main = "Row-Scaled Heatmap")
