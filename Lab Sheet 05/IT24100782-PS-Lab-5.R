setwd("C:\\Users\\ADMIN\\Desktop\\IT24100782")

# Import data set (assuming the file is in working directory)
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)

head(Delivery_Times)

# Import without header
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = FALSE)

# Rename column properly
colnames(Delivery_Times) <- "Time"


# Convert column to numeric
Delivery_Times$Time <- as.numeric(as.character(Delivery_Times$Time))

# Define breaks (20 to 70 with 9 equal intervals)
breaks <- seq(20, 70, length.out = 10)

# Draw histogram
hist(Delivery_Times$Time,
     breaks = breaks,
     right = FALSE,
     col = "lightgreen",
     border = "black",
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     ylab = "Frequency")

# Build frequency table
freq_table <- hist(Delivery_Times$Time, 
                   breaks = breaks, 
                   right = FALSE, 
                   plot = FALSE)

# Cumulative frequencies
cum_freq <- cumsum(freq_table$counts)

# Ogive plot
plot(breaks[-1], cum_freq, type = "o", pch = 16, col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time",
     ylab = "Cumulative Frequency")
