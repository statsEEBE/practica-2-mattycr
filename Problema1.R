#Codigo para problema 1
#1. cual es el coef de determinacion? (Rsq) esta en la tabla
R<- 0.1923
#2. coef de correlacion es la raiz cuadrada de Rsq
corr <- sqrt(R)
corr
# m = 0.067
#3. que variacion esperamos del valor del mercado per el aumento del 1 unidad de activos? -> pide la pendiente que esta en la tabla
m <- 0.0658 #Estimate -> intercept
b <- 11.798 #Estimate -> assets

#4. Valor del mercado para activos 647.1
x <- 647.1
m*x+b

