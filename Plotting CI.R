# The 'ames' data frame is already loaded into the workspace

# Initialize 'samp_mean', 'samp_sd' and 'n':
samp_mean <- rep(NA, 50)
samp_sd <- rep(NA, 50)
n <- 60

# For loop goes here:
for (i in 1:50) {
    samp <- sample(population, n) 
    samp_mean[i] <- mean(samp)
    samp_sd[i] <- sd(samp)
}

# Calculate the interval bounds here:
lower <- samp_mean - 1.96 * (samp_sd/sqrt(n))
upper <- samp_mean + 1.96 * (samp_sd/sqrt(n))

# Plotting the confidence intervals:
pop_mean <- mean(population)
plot_ci(lower, upper, pop_mean)