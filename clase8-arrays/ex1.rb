# en este curso se aprendera sobre los arrays
# o listas en ruby.

# un array puede almacenar todo tipo de datos.
# para escribir un arreglo en ruby se hace de la
# siguiente manera correctamente
# variable = Array[]

friends = Array['paul', 'esteban', 'oscar']
puts friends

marcas_auto = Array['audi', 'chevrolet', 'nissan']
puts marcas_auto

# Tambien puedo tomar un elemento del array por
# su propia posicion dentro de este, ejemplo:

puts ('la posicion corresponde a ' + marcas_auto[0])

# tambien puedo acceder a un elemento del array por el final
# esto se consigue utilizando -1 como index.
# pero ojo este no empieza por el 0 siempre desde el -1

puts ('entrando desde el final ' + marcas_auto[-1])
puts ('entrando desde el final al segundo ele ' + marcas_auto[-2])

lista_cumpleaños = Array['paul', 'dani', 'roberto']
puts lista_cumpleaños

# recordamos como con los string puedo obtener con diversos metodos info de estos
# por ejemplo se podia tomar los caracteres de cierta posicion a otra final, bueno
# en este caso con los arrays podemos pedir que muestre solo ciertos elementos de este.

puts lista_cumpleaños[1, 2]

# Otra cosa que es muy comun dentro del manejo de los arrays es la reasignacion
# de los elementos dentro del array, ejemplo

lista_cumpleaños[2] = 'esteban'
puts lista_cumpleaños

datos_persona = Array['nombre', 'casa', 'dni']
datos_persona[1] = 'apellido'
puts datos_persona

# recordemos la variable include, que tambien puede ser utilizada para buscar elementos
# dentro de un array y que me retorne true o false si estos estan o no, ejemplo

cosas_casa = Array['lampara', 'velador', 'ducha']
puts cosas_casa.include? 'cama'

# existe otro metodo que es muy utilizado para crear array que es creando un "nuevo objeto array"
# esto se logra con Array.new, ejemplos:

# creo un nuevo objeto array con el metodo new
array_uno = Array.new
array_uno[0] = 'ricardo'
array_uno[1] = 'esteban'
array_uno[2] = 'paul'

puts array_uno

array_dos = Array.new
array_dos[0] = 'lampara'
array_dos[1] = 'velador'
array_dos[2] = 'mesa'

puts array_dos


# tambien se puede hacer mediante un metodo que muestre en reversa los elementos 
# del array formado con el metodo reverse

reverse = Array.new
reverse[0] = 'soy'
reverse[1] = 'aprendiz'
reverse[2] = 'de ruby'

puts reverse.reverse()

# Recuerdas alguna vez los sort(), sort es un metodo que te permite ordenar de manera
# alfabetica los elementos de un array.

ordenalos = Array['Paul', 'Esteban', 'Ricardo']
puts ordenalos.sort()

# ejercicio miscelaneo, de un array reemplaza el elemento 2

array = Array['casa', 'puente', 'avion']
array[2] = 'mesa'
puts array

# ejercicio miscelaneo, de un array imprime el elemento dos desde el final
# sobre el mismo verifica si la letra u existe.

array_test = Array['t', 'a', 'i']
puts array_test[-2]

puts array_test.include? 'u'