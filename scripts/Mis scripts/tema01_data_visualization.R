
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
