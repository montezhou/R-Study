# Initialize the number of darts to throw and the count of darts landing in the circle
num_darts <- 1000000
num_darts_in_circle <- 0

# Generate random x and y coordinates for the darts
x <- runif(n = num_darts, min = -1, max = 1)
y <- runif(n = num_darts, min = -1, max = 1)

# Calculate the sum of squares for each coordinate pair
sum_squares <- x^2 + y^2

# Identify which darts landed within the unit circle
indexes_darts_in_circle <- which(sum_squares <= 1)

# Count the number of darts that landed inside the unit circle
num_darts_in_circle <- length(indexes_darts_in_circle)

# Estimate the value of Pi and print it
print(4 * num_darts_in_circle / num_darts)

# Loop to plot the points (Note: Changed from num_darts to 10 for demonstration purposes)
for (i in 1:10){  
  # Plot all the points up to the ith point, set axis limits to -1 and 1
  plot(x[1:i],y[1:i], xlim = c(-1, 1), ylim = c(-1, 1), xlab = "X-Axis", ylab = "Y-Axis")
  
  # Highlight the ith point in red
  points(x[i], y[i], col = "red")
  
  # Pause for a short time (0.1 seconds) to make the animation
  Sys.sleep(0.1)
}