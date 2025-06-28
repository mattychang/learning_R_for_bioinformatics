##################################################
# 05_io_and_environment.R
##################################################

##################################################
# Directories
##################################################

# Get current working directory
getwd()

# Set working directory (uncomment and modify the path as needed)
# setwd("/your/path/here")

# List all files in the current directory
list.files()

# Check if a specific file or folder exists
file.exists("student_info.csv")
dir.exists("data")

##################################################
# Input / Output
##################################################

# ---- CSV Files ----

# Read in a CSV file
students <- read.csv("student_info.csv")
head(students)

# Write out a CSV file
write.csv(students, "students_copy.csv", row.names = FALSE, quote = FALSE)


# ---- TXT Files ----

# Read in a tab-delimited TXT file
file_data <- read.table("file.txt", sep = "\t", header = TRUE)
head(file_data)

# Write out a tab-delimited TXT file
write.table(file_data, "file_copy.txt", sep = "\t", row.names = FALSE, quote = FALSE)

##################################################
# Environment Management
##################################################

# List all objects in the environment
ls()

# Remove a specific object
rm(file_data)
