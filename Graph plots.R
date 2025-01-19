x = round(runif(100, min=1, max=5),2)
print(x)
plot(x, main="Plot of x against index 1,2,3.....", xlab="X-Axis", ylab="Y-Axis")


#Bivariate Scatter Plot
y = x^2 + runif(100)
plot(x,y, main="Bivariate scatter plot of y vs x")


#other plots
z = list(x=x, y=y)
z
class(z)
plot(z, type="l")   #lines only
plot(z, type="o")   #lines and dots both
plot(z)    #only dots



#generate Ordering
print(x)
ord = order(x)
print(ord)
plot(ord)   #ordered plotting


#merging x and y (ordered)
z = list(x=x[ord], y=y[ord])
print(z)
plot(z, main="y vs x", type="l")  #only lines
plot(z, main="y vs x", type="o")   #points and lines overlayed
plot(z, main="y vs x", type="s")   #steps
plot(z, main="y vs x", type="h")    #Histogram-like



#palette...colored plotting
palette(sample(colors(),10))
plot(runif(50), col = rep(1:10, each = 5), pch = 16, cex = 2)

#Working with iris data set using dplyr
data(iris)
plot(iris)
plot(iris[1:4], col = as.numeric(iris$Species))