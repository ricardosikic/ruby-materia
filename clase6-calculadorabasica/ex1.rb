# primera calculadora basica, basicamente se le preguntara al usuario
# ingresar numeros para crear las operaciones

puts 'ingresa el primer numero'
numero_uno = gets.chomp()

puts 'ingresa el segundo numero'
numero_dos = gets.chomp()

# una de las cosas que tiene ruby es que convierte todo en string dentro de un input
# por lo que se utiliza el metodo .to_i para transformar el tipo de data string a integer

# puts numero_uno.to_i + numero_dos.to_i


# ahora surge otro problema, que pasa si sumo un integer con un flotante!
# ejemplo: 2 + 5.4 la salida deberia de ser 7.5, sin embargo la salida muestra un integer
# por lo que se debe pasar a las variables un metodo .to_f

puts numero_uno.to_f + numero_dos.to_f
puts numero_uno.to_f - numero_dos.to_f


