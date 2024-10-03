#Codigo para problema 2

mis_dades<-iris;
mis_dades

x <- mis_dades$Petal.Length # $ nos permite extraer la comumna que queremos
y <- mis_dades$Sepal.Length
# nos piden ver la correlacion entre Sepal y Nepal (si una crece, que hace la otra...)

plot(x,y)
# amb el plot veiem que hi ha una clara tendencia que si creix la llargada de Petal(x) també creix la llargada de Sepal(Y)

#La idea es hacer una recta de regresión por minimos cuadrados
# Necesitamos calcular la pendiente y la 'b', pero primero necesitamos la media
x_bar <- mean(x) #media de x
y_bar<-mean(y) #media de y

m <- sum((x-x_bar)*(y-y_bar))/sum((x-x_bar)^2)

b<- y_bar -m*x_bar

#utilizando el modelo anterior, cual es la prediccion para un Petal.Length de 1.5? (pred = valores de la recta)
y <- m*1.5+b
#como dibujo una recta con sus valores?
#creo prediccion de valores x i y
x_predic <- x
x_predic
y_predic <- m*x_predic +b
y_predic
#hago que las predic sean lineas y despues los represento encima de plot (los sobrepone)
plot(x,y)
lines(x_predic, y_predic)

#Como mido que tan bueno es la prediccion? -> coeficiente de determinacion (si da 1 -> 100% coincide/ si da 0 -> 0% coincide)
Rsq <- sum((y_predic-y_bar)^2)/sum((y-y_bar)^2)
Rsq
#podemos encontrar el coef de correlacion
cor <- sqrt(Rsq)
cor
# Para calcular la R y mas de forma directa
mod <- lm(y~x)
summary(mod)

cor.test(x,y)

y_pred2 <-predict(mod,data.frame(x=1.5))
y_pred2
