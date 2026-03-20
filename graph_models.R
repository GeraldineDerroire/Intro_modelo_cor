library(ggplot2)


##### Growth

# Define the function
G_func <- function(D, Gmax, Dopt, K) {
  Gmax * exp(-0.5 * (log(D/Dopt) / K)^2)
}

# Generate values
D <- seq(10, 80, by = 1)

# Parameters
Gmax <- 1
Dopt <- 30
K <- 0.9

df <- data.frame(
  x = D,
  y <- G_func(D, Gmax, Dopt, K))

ggplot(df, aes(x, y)) +
  geom_line() +
  ylim(0,1) +
  labs(x = "DBH", y = "Growth")

