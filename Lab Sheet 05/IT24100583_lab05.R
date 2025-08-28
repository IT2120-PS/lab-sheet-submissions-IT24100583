#01
setwd("C:\\Users\\it24100583\\Desktop\\IT24100583_lab05")

#02
delivery_times<-scan("Exercise - Lab 05.txt", skip = 1)

#03
breaks <- seq(20, 70, length.out = 10)
hist(delivery_times,
     breaks = breaks,
     right = FALSE,
     col = "lightblue",
     border = "black",
     main = "Histogram of delivery times",
     xlab = "Delivery time (minutes)",
     ylab = "Frquency")
#04
# histogram is a bell-shaped with a slight right skew.

#05
hist_counts <- hist(delivery_times, breaks = breaks, right = FALSE, plot = FALSE)$counts
cum_freq <- cumsum(hist_counts)

plot(breaks[-1], cum_freq, type = "o",
     main = "Cumulative frequency polygon (Ogive)",
     xlab = "Delivery time (minutes)",
     ylab = "Cumulative frequency",
     col= "blue", pch = 16)
grid()
