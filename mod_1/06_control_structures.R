##################################################
# 06_control_structures.R
##################################################

##################################################
# if / else
##################################################

score <- 85

if (score >= 90) {
  print("Grade: A")
} else if (score >= 80) {
  print("Grade: B")
} else {
  print("Grade: C or lower")
}

# Inline version using ifelse()
result <- ifelse(score >= 90, "A", "Not A")
print(result)

##################################################
# for loop
##################################################

names <- c("Alice", "Bob", "Charlie")

# Loop over elements
for (name in names) {
  print(paste("Hello,", name))
}

# Loop with index
for (i in 1:length(names)) {
  cat("Index:", i, "| Name:", names[i], "\n")
}

##################################################
# while loop
##################################################

counter <- 1

while (counter <= 5) {
  print(counter)
  counter <- counter + 1
}

##################################################
# functions
##################################################

# Define a function to calculate BMI
calculate_bmi <- function(weight_kg, height_m) {
  bmi <- weight_kg / (height_m^2)
  
  # Classify BMI
  if (bmi < 18.5) {
    status <- "Underweight"
  } else if (bmi < 25) {
    status <- "Normal weight"
  } else {
    status <- "Overweight"
  }
  
  return(paste("BMI:", round(bmi, 1), "| Status:", status))
}

# Call the function
calculate_bmi(70, 1.75)
