
# Wine dataset
wine <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep = ",")

head(wine, n=4)

dim(wine)

colnames(wine)

# Assigning new names
colnames(wine) <- c('Type', 'Alcohol', 'Malic', 'Ash', 'Alcalinity', 'Magnesium', 'Phenols', 'Flavanoids', 'Nonflavanoids','Proanthocyanins', 'Color', 'Hue', 'Dilution', 'Proline')
          
# Checking the new column names
names(wine)

str(wine)

# Changing the Type variable data type
wine$Type <- as.factor(wine$Type)

str(wine)

# Mean calculation
colMeans(wine[, 2:5])

# Mean of the variables by wine type
by(wine[2:5], wine$Type, colMeans)

var.wine <- var(wine[, 2:5]) 
round(var.wine, 2)

# Correlation matrix 
cor.wine <- cor(wine [2:5])
 
round(cor.wine, 2)

corrplot(cor.wine, method = "ellipse")

# Scatter plot matrix using the base R plot function
pairs(wine[,2:5])

# Scatter plot matrix colored by groups
splom( ~ wine[,2:5], pch = 16, col = wine$Type)

install.packages("scatterplot3d")
library(scatterplot3d)
# Plot the three variables 
scatterplot3d(wine[, c(2,3,5)], color = wine$Type)
colnames(wine)
