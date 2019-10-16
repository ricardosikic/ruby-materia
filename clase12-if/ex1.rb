# en esta clase se repasaran los if para los controles 
# de flujo dentro de la aplicacion
# la sintaxis es la siguiente

# if condicion
#     #return
# end

is_login = true

if is_login
    puts 'esta logeado'
end

is_login

lista = Array[0, 1, 2, 3]
a = lista.include? 4

if a == false
    puts 'no esta el 4'
end


# ademas del if existe el else

numero_uno = 40

if numero_uno >= 50
    puts 'es mayor'
else
    puts 'no es mayor'
end

# otro caso es analizar un condicional con 2 variables
# con el and

male = true
install = true

if male and install
    puts 'se cumple'
else 
    puts 'no se cumple'
end

# ahora si una de las condiciones no se cumple con 
# un condicional and

female = false
is_login = true

if female and is_login
    puts 'se cumple'
else
    puts 'no se cumple'
end

# en el fondo si una de las condiciones no se cumple 
# la condicion evalua false
# con and ambas condiciones deben ser verdaderas(true)


# por su parte or permite tener una condicion que es true 
# y otra condicion que es false, si alguna se cumple evalua como true


celular = true
telefono = false

if celular or telefono
    puts 'se cumple una y corre este bloque'
else
    puts 'no se ejecuta '
end


is_logout = true
is_register = false

if is_logout or is_register
    puts 'se ejecuta este bloque'
else
    puts 'no se ejecuta este bloque'
end

# que pasa ahora si queremos chequear otra condicion mas
# para esto utilizamos elseif

if is_logout and is_register
    puts 'ejecuta este bloque'
elsif is_logout and !is_register
    puts 'se ejecuta este segundo bloque'
else
    puts 'ninguno se ejecuta'
end

# lo que sucede aqui es que cuando tengo dos variables
# que pasan como condicion dentro de if utilizando and
# el if evaluara la primera condicion y si esta no se cumple
# evaluara la siguiente hasta que se cumpla y sea true

# recordemos que con los condicionales if elif tambien 
# existen and y or para evaluar 2 condiciones

if 4 == 4
    puts 'son iguales'
else
    puts 'no son iguales'
end