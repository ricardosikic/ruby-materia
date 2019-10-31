class Empleado
    attr_accessor :nombre, :salario

    def salario_neto
        return (salario * 1.12)
    end
end


class Cajero < Empleado
    attr_accessor :bono
    
    def salario_neto
        return (salario * 1.12) + @bono
    end
end

cajero1 = Cajero.new()
cajero1.salario = 10
cajero1.bono = 50

puts ('sueldo ' + cajero1.salario_neto.to_s)



class Cocinero 
    attr_accessor :salary

    def sueldo_base
        calculo_salario
    end

    protected

    def calculo_salario
        return (salary * 1.12)
    end
end


class Ayudante < Cocinero
    attr_accessor :propinas

    def sueldo_base
        calculo_salario + @propinas
    end
end

ayudante1 = Ayudante.new()
ayudante1.salary = 10
ayudante1.propinas = 4
puts ayudante1.sueldo_base.to_s


module PrimerModulo
    def uno
    end

    class Base
    end
end

module SegundoModulo
    class Base
        def uno
            return self
        end
    end 
end

base1 = SegundoModulo::Base.new()
puts base1.uno


module Uno
    def uno
        return 'tu nombre es ' + @nombre
    end
end

class Nombre
    include Uno
    
    attr_accessor :nombre 

end

nombre1 = Nombre.new()
nombre1.nombre = 'ricardo'
puts nombre1.uno