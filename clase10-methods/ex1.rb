# en esta clase numero 10 veremos metodos, que son 
# y como se hacen en ruby.
# los metodos basicamente son bloques de codigos
# que podemos escribir y que realizan taks especificas.
# lo bueno de los metodos es que puedes llamarlos desde otras partes de la app

# la forma de escribir es un metodo es utilizando la palabra def
# def significa que estamos definiendo un metodo.
# lo segundo es ponerle un nombre al metodo que defini(def)
# al final del bloque debemos poner la palabra end.

# def dihola
#     puts 'hola usuario'
# end
# # debemos invocarlo o llamar al metodo
# dihola

def msg
    puts 'hola a todos'
end
msg

# tambien a los metodos les podemos pasar parametros.

def nombre(name)
    puts ('hola ' + name)
end

nombre('ricardo')

def datos(nombre, edad)
    puts ('tu nombre es ' + nombre + ' tu edad es ' + edad.to_s)
end

datos('ricardo', 31)

# tambien puedo correr un metodo que al llamarla no se le pase un segundo parametro
# por lo que me daria un error, lo que se hace en estos casos es definir un parametro por default

def test(x, y = 1)
    puts x + y
end

test(5)


def test_2(a, b = 4)
    puts a + b
end

test_2(4)

# basicamente los metodos son las funciones que conocemos desde Js.
# solo que en ruby estos son conocidos como metodos, se pueden pasar
# a los metodos distintos parametros tanto en el llamado como dentro del metodo
# en si, que pasaria a ser un parametro por default


# con los metodos puedo utilizar distintos callbacks entre funciones
def test_3
    puts 'hola, mi primer callback'
end

def test_4
    test_3
end

test_4


# tambien podemos crear hashes y pasar esa data a traves de los metodos como parametros

datos = {
    :name => 'juanito',
    :edad => 44
}

def data(datos)
    puts ('pase al metodo por parametro los datos ' + datos[:name] + ' y ' + datos[:edad].to_s)
end

data(datos)


# ejercicio. pasa la data del hash datos_numericos como parametro a un metodo que sume
# a y d, pero que d pase a ser positivo
datos_numericos = {
    :a => 40,
    :b => 10,
    :c => 5,
    :d => -100
}

def suma(numeros)
    abs = numeros[:d].abs()
    puts numeros[:a] + abs
end

suma(datos_numericos)


# ejercicio data recogida del input y que haga una operacion exponencial y modular
# a traves de un metodo.

valor_uno = gets.chomp().to_f
valor_dos = gets.chomp().to_f

def operacion(x, y)
    puts x**y
    puts x % y
end

operacion(valor_uno, valor_dos)



