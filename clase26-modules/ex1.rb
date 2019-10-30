# en esta clase 26 pasaremos el concepto de modules y para que sirven en ruby

# Los modulos tiene un funcion para evitar colisiones de nombres de clase
# ademas que al igual que la herencia permite la reutilizacion de codigo.
# ¿Que son los modulos?, los modulos son verdaderos contenedores que 
# almacenan clases, constantes y metodos.

# ¿Como se definen? los modulos en ruby se definen con la palabra module + nombre
# ejemplo de un metodo en ruby

module PrimerModulo
    MAX_CONSTANT = 33

    class Uno
    end

    class Dos
    end

    def metodo1
    end

    def metodo2
    end

end

# como se puede ver aqui un modulo contiene diversas clases y metodos.

# ¿Para que sirven los modulos?
# los modulos evitan que haya colisiones de nombres de clases, por lo tanto puedo
# tener en una app 2 o mas clases definidas con el mismo nombre pero que estan en
# modulos distintos por lo tanto cuando se crea un modulo creas un namespace distinto.
# o en español un espacio de nombramiento distinto. ejemplo:

module ActiveRecord
    class Base
    end
end

module ActionView
    class Base
    end
end


# como puedes ver aca, hay dos nombres de clase iguales pero que estan en modulos
# distintos (o namespace) lo que previene la colision por nombres de clase.

# ¿Como puedo referirme a la clase dentro de un modulo?
# usaremos el ejemplo de arriba para ver como accedemos a las clases de un modulo

ActiveRecord::Base 
# como puedes ver para accesar a la clase dentro de un modulo llamas al modulo + :: + nombre de la clase


# La segunda caracteristica de los modulos es que permiten la reutilizacion de codigo.

# ejemplo

module Dancer
    def dance
        puts 'soy un bailarin'
    end
end

class Persona
    include Dancer
end

# creare una instancia de la clase persona.
persona1 = Persona.new()
puts persona1.dance

# como puedes ver un modulo permite la reutilizacion del codigo.
# en este ejemplo la clase persona utilizo el metodo dance contenido 
# en el modulo por medio de la palabra include + nombre del modulo
# al utilizar include dentro de una clase me permite utilizar las clases o metodos de este.

# ademas cuando incluimos un modulo dentro de una clase permite que el modulo
# utilize clases o atrib de la clase en donde el modulo este llamado ejemplo.

module Ladrido
    def ladrar
        puts 'el perro ladra ' + guau
    end
end

class Perro
    include Ladrido
    def guau
        'guau'
    end
end

perro1 = Perro.new()
puts perro1.ladrar

# por lo tanto vemos como los modulos quedan conectados con otras partes de la app (clases)
# con include, dejando asi que la clase herede clases y metodos del modulo y el modulo a su vez
# puede utilizar metodos de la clase en donde esta llamado.

# ¿que son las variables de instancia dento de una clase?

class Auto
    attr_accessor :marca, :año
    
    def initialize(marca, año)
        # variables de instancia en una clase
        @marca = marca
        @año = año
    end

    def info_auto
        return 'el auto es ' + @marca
    end

end

auto1 = Auto.new('toyota', 2017)
puts auto1.info_auto


# ¿Que significa self?
# la palabra self hace referencia a la clase o modulo a la cual pertenece el objeto

class A
    def s
        puts 'la clase s pertenece a la clase A'
        puts self
    end
end

a1 = A.new()
a1.s
# el objeto a1 pertenece a la clase A

# el output me muestra #<A:0x000000000502d5c8> lo cual me dice que este
# objeto pertenece al modulo A (metodo es un objeto como casi todo en ruby)

class B
    def d
        puts self
    end
end

b1 = B.new()
b1.d
# el objeto b1 pertenece a la clase B

# output #<B:0x000000000508c438>, lo cual me indica que el metodo (en este caso el objeto)
# pertenece a la clase B

module Numero_uno
    def saluda
        return 'hola tu nombre ' + @nombre
    end
end

class Nombre
    include Numero_uno

    attr_accessor :nombre

    def initialize(nombre)
        @nombre = nombre
    end

end

nombre1 = Nombre.new('ricardos')
puts nombre1.saluda