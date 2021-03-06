
# Los facets de ggplot - 16 de enero de 2020

library(tidyverse)
#tidyverse 1.3.0 --
#<U+2713> ggplot2 3.2.1     <U+2713> purrr   0.3.3
#<U+2713> tibble  2.1.3     <U+2713> dplyr   0.8.3
#<U+2713> tidyr   1.0.0     <U+2713> stringr 1.4.0
#<U+2713> readr   1.3.1     <U+2713> forcats 0.4.0


##FACETS
# facet_wrap(~<FORMULA_VARIABLE>): La variable debe ser discreta

# esto es solo para una sola variable (en el ejemplo la variable "class")
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~class, nrow = 2)

# para dos variables
# facet_grid(<FORMULA_VARIABLE1>~<FORMULA VARIABLE2>)

  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_grid(drv~cyl)

#facet automatico 
  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_grid(.~cyl)

#ejemplo de facet con variable continua
  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_wrap(~cty, nrow = 2)
#no recomendable
  
  view(mpg)

  #1.- para cada uno de los elementos genera un g�fico, se recomienda que la variable sea discreta de prefrencia por lo que no es recomendable utilizar variables continuas para los facets  
  #2.- que no hay modelos de automovil que caigan en esa categor�a, no hay automoviles de 4 cilindros con traccion trasera, ni automoviles con 5 cilindros de traccion trasera ni traccion en 4 llantas.
  
  
  ggplot(data = mpg) +
    geom_point(mapping = aes(x=drv, y = cyl)) 

  #la misma relacion respecto al n�mero de cilindros y la posicion de la traccion del automovil aun que se omiten las otras variables como: el tama�o del motor
  # y el hwy

#3.-  Graficos de la relacion  millas recorridas por galon (hwy), tama�o del motor (displ) mas el facet de numero de cilindros y el segundo codigo lo mismo pero en vez de cilindros, la posicion de la tracci�n.
#    El punto hace que se genere automaticamente el facet grid
  # parece que cambia la orientacion del grafico respecto a la variable discreta
  ggplot(data = mpg) +
    geom_point(mapping = aes(x=displ, y = hwy)) +
    facet_grid(.~cyl)
  
  ggplot(data = mpg) +
    geom_point(mapping = aes(x=displ, y = hwy)) +
    facet_grid(drv~.)  
  
  #4.-
  ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy)) +
    facet_wrap(~class, nrow = 3)
#�Qu� ventajas crees que tiene usar facets en lugar de la est�tica del color?
  #�Qu� desventajas? 
  #�Qu� cambiar�a si tu dataset fuera mucho m�s grande?  
#  Pudiera ser mas facil visualmente identificar o separar algunos valores de nuestras variables al tenerlos en graficos individuales y evitar confusiones
  
  #5.-
  #Investiga la documentaci�n de ?facet_wrap y contesta a las siguientes preguntas:
  
#  �Qu� hace el par�metro nrow?
#    �Y el par�metro ncol?
#    �Qu� otras opciones sirven para controlar el layout de los paneles individuales?
#    �Por qu� facet_grid() no tiene los par�metros de nrow ni de ncol?
 
  ?facet_wrap   
# numero de filas  
# numero de columnas  
#
  # por que se seleccionan automaticamente dependiendo de las variables que introduzcamos
#6.- tener una mejor vision de los datos  
  
  
  
  #----------------- SESION 20: LAS DIFERENTES GEOMETRIAS DE GGPLOT 2--------------------

#Diferentes geometrias  
ggplot(data = mpg) +
    geom_point(mapping = aes(x = displ, y = hwy))
  
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv, color = drv))
