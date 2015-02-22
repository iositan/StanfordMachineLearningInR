plotData <- function(X, y) {
  #  plotData Plots the data points X and y into a new figure 
  #  plotData(X,y) plots the data points and gives the figure axes labels of
  #   population and profit.
  
  # ====================== YOUR CODE HERE ======================
  # Instructions: Plot the training data into a figure using the 
  #               "plot" commands. Set the axes labels using
  #               the "xlabel" and "ylabel" commands. Assume the 
  #               population and revenue data have been passed in
  #               as the x and y arguments of this function.
  #
  # Hint: You can use the 'rx' option with plot to have the markers
  #       appear as red crosses. Furthermore, you can make the
  #       markers larger by using plot(..., 'rx', 'MarkerSize', 10);
  
  
  plot(X, y, type="p",  pch=4, col="red",
       xlab = 'Population of City in 10,000s',
       ylab = 'Profit in $10,000s', cex=0.9);
  
  figCounts <- incCount(figCount, "f.randomFigure")
}