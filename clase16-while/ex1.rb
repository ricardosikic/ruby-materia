# en esta clase veremos los while loops
# la gracia de while loops es que mientras cierta condicion se mantenga true
# seguira corriendo el codigo, miremos un ejemplo

# veamos como se escribe while

# a = 1

# while condicion
#     # se mantendra ejecutandose mientras la condicion sea true
# end

# mientras la condicion del while se mantenga verdadera se mantendra loopeando
# el codigo dentro hasta que la condicion se haga falsa.
# siempre es recomendable empezar inicializando una variable.

# ejemplo

# inicializo
posicion = 1

# mientras la condicion sea true se ejecutara el codigo
# llegara un punto donde la condicion en que la variable sea mayor a 10 alli,
# pasara a ser false por lo tanto el while loop para de evaluar y ejecutar codigo
while posicion <= 10
    puts posicion
    posicion += 1
end


inicializo una variable

edad = 1

while edad <= 18
    puts 'eres menor de edad'
    edad = edad + 1
    if edad == 15
        puts 'ya te quedan 3 años'
        break
    end
end


puntos = 0

while puntos <= 5

    puts puntos
    puntos += 1

    if puntos == 3
        puts 'encontrado el 3'
        next
    end

end


# por lo tanto con while puedo evaluar una condicion muchas veces mientras esta sea 
# siempre verdadera, cuando la condicion pasa a ser falsa este ciclo deja de evaluar
# para mejorar el entendimiento puedes utilizar condicionales if dentro de este while
# para ver cuando cierta condicion se cumpla y que continue o quiebre el codigo