# En esta clase numero 24 repasaremos el concepto de encapsulamiento en ruby
# cuales son los 3 metodos de encapsulamiento que existen y un ejemplo.

# recordemos que encapsulamiento es un concepto para las clases que tienen atributos
# de clase y metodos de clase que los objetos usan, ya que se crean a partir de estas.

# El encapsulamiento se utiliza en la POO para ocultar informacion y/o procedimientos
# del resto de la aplicacion. en el fondo son metodos o atributos de un clase que pueden
# ser leido o escritos desde cualquier parte de la aplicacion o solo desde la clase o subclase.

# a continuacion veamos un ejemplo.

class ClientesTienda
    def initialize
        @customers = {}
        @next_id = 1
    end

    def all(customers)
    end

    def create(customers)
    end

    def delete(customers)
    end

    private
    def next_customer_id
        @next_id += 1
    end
end

# Analizemos el ejemplo anterior para entender el encapsulamiento.
# se definio una clase ClientesTienda, esta clase contiene metodos de clase
# como tambien distintos atributos

# en esta clase existen 2 atributos que son privados, @customers y @next_id
# por defecto en ruby los atributos son privados a menos que se configure su
# visibilidad utilizando los metodos attr.

# esta clase a su vez tiene 3 metodos que son publicos all, create y delete

# Ademas esta clase utiliza un metodo private en el cual se define un metodo


# en el encapsulamiento existen 3 metodos:
# 1- Public: con este metodo permito que puedan ser accedidos desde cualquier 
# parte de la aplicacion.
# 2- Private y protected: estos metodos de ruby me indican que solo pueden ser accedidos
# desde la clase o subclase (concepto de herencia que se vera en la otra clase.)
