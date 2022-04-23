# Predict wester ross population based on census data in R

# Create population variable
# 2001 census 11620
# 2011 census 12230
# 2021 est    12260

change11 <- 12230 - 11621
change21 <- 12260 - 12230
print(change21)
print(change11)


# Variables
year = 2021
population = 12260

while (year < 2050) {
    # Calculate change as a value
    change = (as.numeric(population / 100 , digits =4))
    change = (as.numeric(change * 0.03 , digits =4))
    
    # Increment population
    population = population + change
    
    # Increment year
    year = year + 1
       
    # Print values
    print(paste(" Population in", year, population))   
}