# las operaciones matematicas basicas para ruby son
# suma, resta, multiplicacion y division, ej:

puts 4 + 4
puts 4 - 3
puts 3 - 4
puts 2 * 2
puts 2 / 2

# como ves ruby tambien treabaja con numeros negativos.

# ruby tambien trabaja con operaciones en los que hay un exponente

puts 2**3
puts 2**2
puts 4**5

# otra operacion matematica que se usa en rb son los % (modulos), lo que hacen
# es dividir un numero con otro y entregar el resto.

puts 5 % 4
puts 10 % 5
puts 8 % 3
puts 5 % 5 
puts 10 % 4
puts 5 % 2
puts 16 % 5

# otro metodo es el de abs() lo que hace este metodo es mostrar solo valores absolutos
# positivos

num = -20
puts num.abs()

num_dos = -100
puts num_dos.abs()

# existen otros metodos para redondear numeros del tipo flotante como .round()
# este redondeara hacia arriba si toma el 5 y bajo el decimal 5 redondea hacia a abajo

flotante_uno = 4.55
puts flotante_uno.round()

flotante_dos = 4.45
puts flotante_dos.round()


# otros metodos de redondeo, es el .ceil() que redondea hacia arriba y .floor()
# que lo hace hacia abajo

numero_ceil = 4.4
puts numero_ceil.ceil()

numero_floor = 3.55
puts numero_floor.floor()

# hay otras operaciones matematicas como las que usan la funcion Math un ejemplo son
# Math.sqrt(), Math.log()

puts Math.sqrt(8)
puts Math.log(1)


# ejercicios miscelaneos
numer = -40 
puts numer.abs()

a = 40
puts Math.sqrt(a)

