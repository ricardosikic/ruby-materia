# introducir y explicar como funciona case y cuando se usa.
# case expresions es un tipo especial de if statements
# case recibe una condicion y la evalua dentro de un if que seria en este caso
# when y la condicion.
# case expresion se usa cuando hay muchos if dentro de una aplicacion
# simplificando el codigo, ejemplo.

puts 'ingresa el dia'
dia = gets.chomp()

def eval(dia)
    dia_code = ''

    case dia
    when 'monday'
        # re asigna valor
        dia_code = 'mo'
    when 'tuesday'
        dia_code = 'tu'
    when 'wesnesday'
        dia_code = 'we'
    end 

    puts dia_code

end

eval(dia)

nom = gets.chomp()

def verificador(nombre)
    nombre_cod = ''

    case nombre
    when 'ricardo'
        nombre_cod = 'ri-5'
    when 'alex'
        nombre_cod = 'al-2'
    when 'esteban'
        nombre_cod = 'es-2'
    end
    
    puts nombre_cod
end

verificador(nom)

# ahora que pasa si ninguna condicion en el when se cumple? deberiamos tener una
# salida del tipo else

puts 'ingresa el numero y evalua'
num = gets.chomp()

def evaluanum(numero)
    alerta = ''

    case numero
    # ahora paso las condiciones del parametro
    when '1'
        alerta = 'encontrado 1'
    when '2'
        alerta = 'encontrado 2'
    when '3'
        alerta = 'encontrado 3'
    # ahora si ninguna de las condiciones se cumple deberia tener una salida
    else 
        puts 'no se encuentra el numero ingresado'
    end

    puts alerta
end

evaluanum(num)

# ahora haremos un ejercicio con operaciones

puts 'ingresa numero uno'
numero_uno = gets.chomp().to_i

puts 'ingresa el tipo de operacion'
op = gets.chomp()

puts 'ingresa el numero dos'
numero_dos = gets.chomp().to_i

def calculadora(num1, opera, num2)
    resultado = ''

    case opera
    when '+'
        resultado = num1 + num2
    when '-'
        resultado = num1 - num2
    when '/'
        resultado = num1 / num2
    else
        puts 'no existe esa operacion'
    end

    puts ('el resultado es ' + resultado.to_s)
end

calculadora(numero_uno, op, numero_dos)

# como vemos aqui es que recibo cierta data desde los inputs y en caso que
# el case recibira el argumento opera como condicion a evaluar en cada caso.


# como puedes ver case simplifica la tarea de ir evaluando
# con un if/elsif infinito, ahorra lineas de codigo.