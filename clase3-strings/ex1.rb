# clase de strings y algunos metodos 
phrase = "clase de strings"
puts phrase

# ahora utilizaremos el metodo upcase() / downcase() para transformar
# el string en letras mayusculas o minusculas
puts phrase.upcase()
puts phrase.downcase()

# metodo strip, lo que hace este metodo strip() para eliminar los
# espacios dentro de un string, anulando los espacios de los extremos.
phrase_dos = "   este es un texto con espacio   "
texto = '  texto con       muchos espacios      '
puts phrase_dos
puts phrase_dos.strip()
puts texto
puts texto.strip()

# metodo para saber el largo de un string
# utilizando el metodo length()

phrase_tres = 'hola este es el texto'
puts phrase_tres.length() 


# metodo include? sirve para ver si dentro de un string hay una expresion o no
# retornandome true or false.
# el texto_uno que guarda un tipo de dato string tiene la palabra (include?) tanto.

texto_uno = 'esta la palabra comer aca?'
puts texto_uno.include? 'comer'
puts texto_uno.include? 'comiste'
puts texto_uno.include? 'que?'


# ¿Como saber el caracter de una cadena en especifico?
# para ello en ruby existe variable[0]

cadena = 'mira el caracter de una posicion'
puts cadena[0]
puts cadena[3]

# tambien puedo tomar un rango dentro de los caracteres a tomar
# a traves de su posicion[i, f] ojo que toma los espacios

puts cadena[0, 4]
puts cadena[0, 6]
puts cadena[0, 8]


# metodo .index()
# ademas de encontrar los caracteres por posicion
# tambien podemos encontrar la posicion del caracter por medio de .index('letra')

busca_index = 'donde esta la letra g'
puts busca_index.index('g')
# tambien le puedo preguntar por mas de un caracter y mostrara donde empieza
puts busca_index.index('donde')

puts busca_index.include? 'j'