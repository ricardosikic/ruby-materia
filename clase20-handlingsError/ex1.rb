# En esta clase se hara un repaso de manejo de errores o excepciones en el codigo
# con ruby que pueden salir dentro de el desarrollo.

# una de los errores que podemos usar es division por cero.

# puts 10 / 0

# si pueden ver en consola me mostrara un error del tipo ZeroDivisionError

# otro ejemplo que se puede utilizar es con un array.
num = Array[1, 2, 3, 4]
# puedes seleccionar un elemento del array por su posicion.
puts num[0]
# ahora si intentas seleccionar un elemento del array,
# pasando un string como posicion.
# puts num['dog']

# como ves esto me mostrara otro error no implicit conversion of String into Integer (TypeError)

# la mejor manera de manejar excepciones es utilizando begin y rescue

begin 
rescue
end

# todo codigo que sospeche que podria darme un error lo tiro dentro de este bloque, ejemplo

begin 
    nume = 10 / 0
rescue
    puts 'Division por cero error!'
end

# como puedes ver en consola el programa no paro la ejecucion del codigo solo,
# mostro el error 

# Ahora que pasa cuando tengo 2 o mas potenciales scripts que pueden romper la ejecucion del codigo
# no podria tener
# begin 
#     nume = 10 / 0
#     num['dog']
# rescue
#     puts 'Division by cero error'
# end


# si nos fijamos aqui es que si al script le aparece un error sea cual sea, este mostrara
# el error de division by cero.
# por lo que la mejor manera de manejar 2 o mas errores con begin y rescue es.

begin 
    nume = 10 / 0
    num['dog']

rescue ZeroDivisionError
    puts 'division por cero error'
rescue TypeError
    puts 'wrong type'
end

# por lo tanto para el manejo de eventos de 2 o mas scripts que pueden hacer crash de la app
# es bueno utilizar rescue varias veces con el tipo de error y un mensaje, asi para cuando
# el tipo de error sea del tipo TypeError se ejecutara el puts con el mensaje que has puesto.