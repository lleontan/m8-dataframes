# Exercise 5: Gates Foundation Educational Grants

# Read data into a variable called `grants` using the `read.csv` function
grants<-read.csv("data/gates_money.csv", stringsAsFactors = FALSE)
#View(grants)

# Use the View function to look at your data


# Create a variable `spending` as the `total_amount` column of the dataset
spending<-grants$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
print(is.vector(spending))

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org<-as.vector(grants$organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
mean.grant<-mean(grants$total_amount)
print(mean.grant)
# What was the dollar amount of the largest grant?
max.grant<-grants[which.max(grants$total_amount),][["total_amount"]]

# What was the dollar amount of the smallest grant?
min.grant<-grants[which.min(grants$total_amount),][["total_amount"]]

# Which organization received the largest grant?
max.org.grant<-grants[which.max(grants$total_amount),][["organization"]]

# Which organization received the smallest grant?
min.org.grant<-grants[which.min(grants$total_amount),][["organization"]]


# How many grants were awarded in 2010?
grants.awarded<-length(grants$total_amount>0)