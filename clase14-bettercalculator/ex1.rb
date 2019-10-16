# en esta clase se creara una calculadora con ruby
# lo que se hara en la calculadora sera: suma, resta, division, multiplicacion, log, exp

puts 'elige el tipo de operacion'
# declaro una variable en donde almacenare el string proveniente
op = gets.chomp()

puts 'ingresa el primer numero'
num1 = gets.chomp().to_f

puts 'ingresa el segundo numero'
num2 = gets.chomp().to_f

# ahora podemos hacer una serie de condicionales if, elsif y else

if op == '+'
    puts (num1 + num2)
elsif op == '-'
    puts (num1 - num2)
elsif op == '/' 
    puts (num1 / num2)
elsif op == '*'
    puts (num1 * num2)
elsif op == '**'
    puts (num1**num2)
else
    puts 'operacion no disponible'
end

# como se ve aca es que a traves de los inputs recojo los datos y evaluo a traves de condicionales
# si este se cumple se ejecuta el bloque si no este pasa al siguiente y evalua...y asi.