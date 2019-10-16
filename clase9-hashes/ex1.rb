# los hashes son utilizados para guardar multiples piezas de informacion,
# funcionan como los diccionarios en python pero tambien se comportan
# como cuando creas un objeto con distintos atributos en Js.
# los hashes guardan valores en el formato par key value,
# obviamente su sintaxis cambia a la de Js.
# existen dos formas de escribir hashes en ruby.

# 1
states = {
    'Santiago' => 'Scl',
    'Concepcion' => 'Co',
    'Antofagasta' => 'An'
}

puts states['Santiago']
puts states['Concepcion']

# 2
states = {
    :Serena => 'Se',
    :Valdivia => 'Va'
}

puts states[:Serena]

# Ambas formas son igual  de validas, miremos otros ejemplos

datos_personales = {
    :nombre => 'Ricardo',
    :apellido => 'Leiva',
    :profesion => 'Ingeniero'
}

puts datos_personales
puts datos_personales[:apellido]
puts datos_personales[:profesion]

posts = {
    :id => 1,
    :title => 'hello world',
    :author => 'ruby dev'
}

puts posts
puts posts[:id]
puts ('el autor es ' + posts[:author])
puts ('el titulo del post es ' + posts[:title])


categorias = {
    1 => 'Tecnologia',
    2 => 'Motores',
    3 => 'Politica'
}

puts categorias
puts ('lee la categoria de ' + categorias[1])

# como ves los hashes se comportan como los objetos en JS o diccionarios en PY.
# Por lo tanto estos almacenan multiples datos bajo el concepto key => value

hash = {
    :id => 1,
    :tec => 'ruby'
}

puts hash[:id]