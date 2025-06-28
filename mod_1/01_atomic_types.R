##################################################
# 01_atomic_types.R
##################################################

##################################################
# Assigning variables
##################################################

# Use '<-' or '=' to assign values
x <- 5
y = 10

# View values
print(x)
y

# Reassign values
x <- x + 3

##################################################
# Variable data types
##################################################

# Double (default type for numbers)
a <- 3.14

# Integer (less common)
b <- 7L

# Complex (less common)
c <- 2 + 4i

##################################################
# Character strings and logical (boolean) values
##################################################

# Character (text)
name <- "Matthew"

# Logical (TRUE / FALSE)
is_raining <- FALSE
has_umbrella <- TRUE

# Logical operations
!is_raining
is_raining & has_umbrella
is_raining | has_umbrella

##################################################
# Type checking and conversions
##################################################

# Type checking
typeof(a)
typeof(b)
typeof(c)
typeof(name)
typeof(is_raining)

score <- 95
is.numeric(score)    # TRUE
is.character(score)  # FALSE

# Type conversion
as.character(score)
as.numeric("42")
as.logical(0)        # FALSE
as.logical(1)        # TRUE

##################################################
# Arithmetic and logic
##################################################

x <- 12
y <- 4

# Arithmetic operations
x + y
x - y
x * y
x / y
x^2                  # exponent
x %% y               # modulo (remainder)

# Logical comparisons
x > y
x == y
x != y
x <= 15

# Combine logicals
(x > 5) & (y == 4)
(x < 10) | (y > 10)
