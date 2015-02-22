# Machine Learning Online Class - Exercise 1: Linear Regression

#  Instructions
#  ------------
# 
#  This file contains code that helps you get started on the
# in this exericse:
#
#     warmUpExercise.m
#     plotData.m
#     gradientDescent.m
#     computeCost.m
#     gradientDescentMulti.m
#     computeCostMulti.m
#     featureNormalize.m
#     normalEqn.m
#  For this exercise, you will not need to change any code in this file,
#  or any other files other than those mentioned above.
#
# x refers to the population size in 10,000s
# y refers to the profit in $10,000s
#

# Initialization
rm(list = ls()) ; cat("\014")
source("helper.R")

# ==================== Part 1: Basic Function ====================
# Complete warmUpExercise.R 
print('Running warmUpExercise ... ');
print('5x5 Identity Matrix: ');
source("warmUpExercise.R")
print(warmUpExercise())

print('Program paused. Press enter to continue.\n');
readline("Program paused. Press enter to continue.\n") ;


# ======================= Part 2: Plotting =======================
print('Plotting Data ...')
data <- read.csv('ex1data1.txt', header=FALSE);
X <- data[, 1]; y <- data[, 2];
m <- length(y); # number of training examples

# Plot Data
# Note: You have to complete the code in plotData.R
source("plotData.R")
plotData(X, y);

print('Program paused. Press enter to continue.\n');
readline("Program paused. Press enter to continue.\n") ;

# =================== Part 3: Gradient descent ===================
  print('Running Gradient Descent ...')

X = cbind(rep(1,m) , data[,1]); ##### Add a column of ones to x
theta = rep(0,2); # initialize fitting parameters

# Some gradient descent settings
iterations <-1500;
alpha <-  0.01;

