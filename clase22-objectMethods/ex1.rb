# En esta clase veremos como funcionan los metodos de clase, recordemos 
# que los objetos se crean a partir de las clases y las clases definen los
# atributos y comportamiento del objeto. por lo tanto la clase es el molde
# de las instancias de la clase llamados objetos.

# pasemos a ver unos ejemplos de como estos funcionan.

# primer ejemplo, crearemos una clase Auto en ella definiremos atributos como marca
# y año. ademas, esta clase tendra un metodo constructor initialize
# a medida que voy creando objetos, este atributo pasara a un metodo que verifique 
# si es viejo o no y al momento de llamar al metodo de clase del objeto, me mostrara el mensaje.

class Auto
    attr_accessor :marca, :año

    def initialize(marca, año)
        @marca = marca
        @año = año
    end

    def verifica_año
        if @año < 2017
            return 'el auto de marca ' + @marca + ' es muy viejo'
        else
            return 'el auto de marca ' + @marca + ' es del año'
        end
    end
end

auto1 = Auto.new('toyota', 2016)
puts auto1.verifica_año

auto2 = Auto.new('hyundai', 2019)
puts auto2.verifica_año


# segundo ejemplo, se creara una clase estudiante en la cual tendra los atributos
# nombre y promedio. Ademas, tendra un metodo que verifique que al tener tal promedio
# se gradue con honores o no.

class Estudiante
    attr_accessor :nombre, :promedio

    def initialize(nombre, promedio)
        @nombre = nombre
        @promedio = promedio
    end

    def tiene_honores
        if @promedio >= 55
            return 'estudiante ' + @nombre + ' tiene honores'
        else
            return 'no posee honores'
        end
    end
end

estudiante1 = Estudiante.new('paulo', 54)
puts estudiante1.tiene_honores

estudiante2 = Estudiante.new('alejandra', 56)
puts estudiante2.tiene_honores

# como puedes ver los metodos de clases funcionan asi cuando se crean objetos, puedo
# hacer distintas operaciones con los metodos de clases para los distintos objetos.
