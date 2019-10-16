# en esta clase aprenderemos a usar condicionales por operadores de comparacion
# como recordamos con if statements se evaluan condiciones
# si alguna condicion es true or false
# ahora haremos un ejemplo mas avanzado para poder probar if statements
# dentro de un metodo

def buscamax(num1, num2, num3)
    # creare un if dentro del metodo que evaluara 2 condiciones por and primero
    if num1 >= num2 and num1 >= num3
        return num1.to_s + ' numero 1 es mayor'
    elsif num2 >= num1 and num2 >= num3
        return num2.to_s + ' numero 2 es mayor'
    else
        return num3.to_s + ' es mayor'
    end
end

puts buscamax(1, 2, 3)

# veamos paso a paso:
# primero: defino mi metodo al cual le pasare parametros que seran pasados al momento 
# de llamar el metodo
# segundo: dentro del metodo que defini anteriormente se hara un condicional if que evaluara 
# mediante un if ambas condiciones, a medida que van evaluando (con and) las condiciones
# llegara un si la condicion primera evalua false entonces pasa al siguiente bloque y evalua
# si la condicion no se cumple pasa a else.


def buscamin(a, b, c)
    if a > b or a > c
        return a.to_s + ' se cumple'
    elsif b > a or b > c
        return b.to_s + ' se cumple'
    else
        puts c.to_s + ' se cumple'
    end
end

puts buscamin(2, 4, 1)

