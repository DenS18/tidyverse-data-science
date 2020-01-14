
#Data Visualization - 07 de enero de 2020


library(tidyverse)
#tidyverse 1.3.0 --
#<U+2713> ggplot2 3.2.1     <U+2713> purrr   0.3.3
#<U+2713> tibble  2.1.3     <U+2713> dplyr   0.8.3
#<U+2713> tidyr   1.0.0     <U+2713> stringr 1.4.0
#<U+2713> readr   1.3.1     <U+2713> forcats 0.4.0

#+++++++++++ PREGUNTA QUE SUSCITA EL ANALISIS+++++++++++++++

#¿Los coches con motor mas grande consumen mas combustible que los
#coches con motor mas pequeño?
#¿La relacion consumo/tamaño es: lineal, no lineal, exponencial?
#¿Es positiva/negativa?

#++++++++++++++++++++ DATA FRAME+++++++++++++++++++++++++++++

ggplot2::mpg #(esto sirve para señalizar de donde quiero obtener el data frame)
mpg          #(sin embargo, puedo solo escribir el nombre del data frame para obtener los datos)

view(mpg)    #(la funcion "view" envoca la vista en forma matricial de los datos)
help(mpg)    #(sirve para solicitar informacion del data frame, aun que tmb se puede usar el simbolo "?")

# displ: tamaño del motor del coche en litros 
# hwy:   numero de millas recorridas en autopista por galon de combustible (3.78541 litros) 
# trans: tipo de transmision
# cyl: numero de cilindros
# fl: tipo de combustible

#sirve para decirle a ggplot que haremos una representación gráfica del dataset
ggplot(data = mpg) +  #el signo de mas significa que haremos una instruccion adicional
  geom_point(mapping = aes(x = displ, y = hwy)) #coordenadas, nube de puntos o skaterplot

#plantilla para hacer una representacion grafica con ggplot:
#ggplot(data = <DATA_FRAME>) +
#  <GEOM_FUNCTION>(mapping = aes(MAPPINGS>))

ggplot(data = mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = cyl, y = cty))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))

#color de los puntos
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

#tama�o de los puntos (conviene que sea numerico)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#Transparencia de los puntos
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#Forma de los puntos (solo permite 6 formas a la vez)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

#Eleccion manual de esteticas
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "red")

# color = nombre del color en formato string
# size  = tama�o del punto en mm
# shape = forma del punto con numeros desde el 0 al 25


# 0 - 14: son formas huecas y por lo tanto solo se le puede cambiar el color
# 15 - 20 : son formas rellenas de color, por tanto se le puede cambiar el color
# 21 - 25: son formas con borde y relleno y se les puede cambiar el color (borde) y el fill (relleno )
d=data.frame(p=c(0:25))
ggplot() +
  scale_y_continuous(name="") +
  scale_x_continuous(name="") +
  scale_shape_identity() +
  geom_point(data=d, mapping=aes(x=p%%16, y=p%/%16, shape=p), size=5, fill="red") +
  geom_text(data=d, mapping=aes(x=p%%16, y=p%/%16+0.25, label=p), size=3)


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),
             shape = 23,
             size = 10,
             color = "red",
             fill = "yellow") 
