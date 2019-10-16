# en esta clase se vera como almacenar cualquier dato que un usuario guarde en
# una variable para luego mostralo o hacer distintas operaciones sobre este.

# pero, ¿Como podemos almacenar datos desde un input?
# Usando el metodo gets (get string). ejemplo:

puts "Ingresa tu nombre:"
name = gets

puts ('hello ' + name + ' you are cool')

# como te diste cuenta ruby imprimio 2 lineas, para evitar que ocurra
# debes imprimir gets.chomp() para olvidarte de esas lineas

puts 'ingresa tu apellido'
apellido = gets.chomp()
puts ('tu apellido ' + apellido + ' sin doble linea')

puts 'dime tu edad'
edad = gets.chomp()
puts ('tu edad es ' + edad.to_s + ' años')

puts 'donde vives?'
ciudad = gets.chomp()
puts('vives en ' + ciudad + ' ahora')


puts 'dime tu comuna'
comuna = gets.chomp()
puts('vives en ' + comuna)