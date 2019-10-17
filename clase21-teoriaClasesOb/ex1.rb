class Persona
    attr_accessor :nombre, :edad, :genero

    def saluda
        puts 'hola soy ' + @nombre
    end
end

# crear instancias de la clase persona que sera un objeto
persona1 = Persona.new
persona1.nombre = 'Ricardo leiva'
persona1.edad = 31
persona1.genero = 'M'


puts persona1.saluda


class Maquina
    attr_accessor :marca, :modelo, :año

    def show_info
        return 'la maquina es de marca ' + @marca + ' modelo ' + @modelo + ' del año ' + @año.to_s
    end
end

# creacion de los objetos (instancias de la clase Maquina)
maquina1 = Maquina.new
maquina1.marca = 'Toyota'
maquina1.modelo = 'xzr-43'
maquina1.año = 2018

maquina2 = Maquina.new
maquina2.marca = 'Hyundai'
maquina2.modelo = 'tr-23'
maquina2.año = 2017

puts maquina2.show_info


# tambien podemos escribir if statements dentro de el metodo de la clase
class Maquina
    attr_accessor :marca, :modelo, :año

    def show_info
        if @año <=2018
            @año = 2019
        end
        return 'la maquina es de marca ' + @marca + ' modelo ' + @modelo + ' del año ' + @año.to_s
    end
end

# creacion de los objetos (instancias de la clase Maquina)
maquina1 = Maquina.new
maquina1.marca = 'Toyota'
maquina1.modelo = 'xzr-43'
maquina1.año = 2018

puts maquina1.show_info


# metodo initialize, cada vez que se ejecuta el comando en este ejemplo Humano.new se inicializa el metodo 
# constructor initialize.

class Humano
    def initialize
        puts 'inicializando humano'
    end
end

humano1 = Humano.new
puts humano1

# el metodo constructor initialize puede recibir argumentos para poder inicializar los atributos del objeto, brindando
# mayor celeridad y reduccion del codigo. como se muestra en el ejemplo

class Auto
    attr_accessor :marca, :año 

    def initialize(marca, año)
        @marca = marca
        @año = año.to_s
    end

    def info_auto
        return 'la marca es ' + @marca
    end
end

auto1 = Auto.new('toyota', 2019)
puts auto1.info_auto