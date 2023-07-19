# 'Hope for Haiti'

# Create a vector to store the dollar amount donated
hope_for_haiti <- c(50, 100, 25, 75, 150)

# Calculate the total amount of donations
total_donations <- sum(hope_for_haiti)

# Generate a graph of the donations
hope_graph <- plot(hope_for_haiti, type="b", 
         ylab="Amount", 
         xlab="Donors", 
         main="Hope for Haiti Donation Amounts")

# Create a new vector to store the number of donors
hope_donors <- c(5, 10, 4, 8, 20)

# Calculate the average donation amount
avg_donation <- total_donations / sum(hope_donors)

# Create a pie chart summarizing the donations
pie(hope_donors,
   labels=c("5 Donors","10 Donors","4 Donors","8 Donors","20 Donors"),
   main="Donors for Hope for Haiti")

# Create a data frame to store the donor data
hope_data <- data.frame(Donors=hope_donors, Amount=hope_for_haiti)

# View the data frame
View(hope_data)

# Calculate the sum of the donations
hope_sum <- sum(hope_for_haiti)

# Create a bar chart of the donations
barplot(hope_for_haiti,
    main="Hope for Haiti Donation Amounts",
    xlab="Donors",
    ylab="Amount")

# Calculate the minimum donation amount
min_donation <- min(hope_for_haiti)

# Calculate the maximum donation amount
max_donation <- max(hope_for_haiti)

# Create a histogram of the donations
hist(hope_for_haiti, 
     main="Hope for Haiti Donation Amounts",
     xlab="Amount")

# Calculate the number of donations
total_donors <- sum(hope_donors)

# Create a vector of donation categories
donation_cat <- c("Under 50", "50-99", "100-149", "150 and Above")

# Calculate the donation amounts in each category
cat_amt <- c(0, sum(hope_for_haiti[hope_for_haiti < 50]), 
     sum(hope_for_haiti[hope_for_haiti >= 50 & hope_for_haiti < 100]), 
     sum(hope_for_haiti[hope_for_haiti >= 100]))

# Create a bar chart of the donation categories
barplot(cat_amt,
     main="Hope for Haiti Donation Categories",
     xlab="Donation Categories",
     ylab="Amount",
     names.arg=donation_cat)

# Calculate the standard deviation of the donations
std_dev <- sd(hope_for_haiti)

# Create a summary table of the donations
summary_table <- table(hope_donors, hope_for_haiti)

# Create a variance plot of the donations
variance_plot <- plot(hope_donors, hope_for_haiti,
      main="Hope for Haiti Donation Variance",
      xlab="Donors",
      ylab="Amount")

# Calculate the correlation between the numbers of donors and the amounts donated
correlation <- cor(hope_donors, hope_for_haiti)

# Generate a linear regression model
lin_reg <- lm(hope_for_haiti ~ hope_donors)

# Create a scatter plot of the regression model
scatter_plot <- plot(hope_donors, hope_for_haiti,
      main="Hope for Haiti Donation Regression",
      xlab="Donors",
      ylab="Amount",
      col="blue",
      pch=20)
abline(lin_reg, col="red")

# Calculate the total amount of donations per donor
avg_donations <- hope_for_haiti / hope_donors

# Generate a 3D plot of the donations
library(rgl)
plot3d(hope_donors, hope_for_haiti, avg_donations,
      main="3D Plot of Hope for Haiti Donations",
      xlab="Donors",
      ylab="Amount",
      zlab="Avg Donations")

# Create a vector of donation categories based on amounts
cat_2 <- c("Under 50", "50-100", "100-150", "150 and Above")

# Generate a mosaic plot of the donations
library(vcd)
mosaicplot(hope_for_haiti ~ hope_donors,
      main="Mosaic Plot of Hope for Haiti Donations",
      xlab="Donation Categories",
      ylab="Donors",
      shade=TRUE,
      legend=TRUE,
      categories=donation_cat)