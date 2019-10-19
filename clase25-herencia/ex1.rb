# en esta clase entenderemos el concepto de herencias.
# la herencia en ruby es un mecanismo de reutilizacion de codigo en POO.
# mediante la herencia una clase hija recibe atributos y metodos desde la 
# clase padre y pueden ser utilizados por esta. tecnicamente no es que se hereden
# los atributos sino mas bien se heredan metodos que permiten que estos atributos
# puedan ser leidos, un ejemplo attr_accessor, attr_writer, attr_reader

# ejemplo

# clase padre
class Transaction
    attr_accessor :user, :date, :amount, :concept
end

# clase hija hereda del padre
class Invoice < Transaction
    attr_accessor :number
end

class Expense < Transaction
end

# Para entender aun mas el concepto de herencia creemos una instancia de la clase
# Invoice(que sera un objeto), como ves la herencia me permite usar los atrib y metodos de la
# clase padre.

# recordemos que cuando se ejecuta el comando .new() se inicializa un metodo
# constructor llamado initialize
invoice1 = Invoice.new()
invoice1.user = 'ricardo'
invoice1.date = '19 octubre'
invoice1.amount = 12.00

puts ('el usuario del invoice es ' + invoice1.user)


# ¿Que pasa si se reescribe un metodo de clase?
# miremos el siguiente ejemplo

# clase padre
class Empleado
    attr_accessor :name, :salary

    def net_salary
        return @salary - (@salary * 0.12)
    end

end

# clase hija
class Manager < Empleado
    attr_accessor :bono

    def net_salary
        return @salary - (@salary * 0.12) + @bono
    end
end


manager1 = Manager.new()
manager1.salary = 12
manager1.bono = 5

puts manager1.net_salary


# Si nos fijamos lo que ocurre aca es que la clase hija hereda del padre 
# ciertos atributos (que pueden accedidos desde cualquier parte de la app)
# ahora el problema de este codigo que si bien funciona, es que existe
# una duplicacion del codigo. por lo que a continuacion veremos una manera 
# mas eficiente de escribirlo utilizando encapsulamientos.

class Empleado
    attr_accessor :name, :salary

    def net_salary
        return base_salary
    end
    
    # solo puede ser accedido de la clase o subclase
    Protected
    def base_salary
        @salary - (@salary * 0.12)
    end
end

# clase hija que hereda de empleado atributos y metodos
class Manager < Empleado
    attr_accessor :bono

    def net_salary
        return base_salary + @bono
    end
end

# crearemos una nueva instancia de la clase manager
manager2 = Manager.new()
manager2.name = 'arturo'
manager2.salary = 14
manager2.bono = 2


# Por lo tanto lo que hicimos fue crear un metodo de clase protected que contiene
# el metodo base salary, este puede utilizarse al ser protected dentro de la 
# clase o subclase solo, con esto reducimos codigo y ademas encapsulamos el codigo.

# por lo tanto hemos utilizado encapsulamiento y herencias.

# la diferencia de protected y private es que protected puede ser accedido desde
# un dentro de la clase y subclase a diferencia con private
# que solo puede ser accedido desde la clase perono desde una subclase.