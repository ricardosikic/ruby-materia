# en esta clase haremos un metodo exponencial
# utilizando el for loop .times
# podras ver que es un ejercicio de reasignacion 
# de la variable con el loop

def exp(base, exponente)
    resultado = 1
    exponente.times do |index|
        resultado = resultado * base
    end

    puts resultado
end

exp(4, 3)

# times es un excelente for loop para hacer recorridos numericos o que cuantas veces se
# repita tal tarea

# 5.times do |time|
#     puts time
# end

# cabe señalar que con los for loops yo recorro posiciones


def expo(base, ex)
    resultado = 1
    
    # lo que hace este loop es ejecutar la operacion tantas veces
    # sea el exponente desde la posicion 0
    ex.times do |exp|
        # se reasigna la variable despues de la primera ejecucion
        resultado = resultado * base
    end
    puts resultado

end

expo(2, 2)

def segundoexpo(a, ex)
    resultado = 1

    ex.times do
        resultado = resultado * a
    end

    puts resultado
end

segundoexpo(2, 4)