# clase que repasara para ruby los ciclos for
# ya que anteriormente pasamos while
# como hemos visto para Js loops sirven mucho para recorrer cosas
# como tambien para repetir tareas tantas veces esta este definida que se haga.
# con ruby tenemos varias formas para los for loops

friends = Array['esteban', 'paul', 'oscar']
# por lo tanto una forma de recorrer este array (Array o Array.new para crearlo) es
# con una estructura de for

for friend in friends
    puts friend
end
# lo que basicamente el loop hace es que al recorrer el array friends y cada elemento
# sera guardado dentro de la variable friend

# otra forma muy usada en rails para los for loops es la siguiente.

marcas = Array['audi', 'nissan', 'chevrolet']

# como puedes ver aca ocurre lo mismo lo que hace el for es recorrer el array
# cada elemento que pase el loop sera guardado en la variable marca

marcas.each do |marca|
    puts marca
end

numeros = Array[1, 2, 3, 4, 5]

for numero in numeros
    puts ('con for in ' + numero.to_s)
end

numeros.each do |x|
    puts ('con each ' + x.to_s)
end

# ahora hay otra manera de loopear en un range de numeros

for index in 0..5
    puts index
end

# ejemplo si necesitas hacer un for entre 1 y 20 puedes hacerlo de la siguiente manera

for i in 1..10
    puts i
end

# ejercicio

for i in 1..5
    puts i
    if i == 2
        puts 'wowww'
    end
end

# por lo tanto lo que hace el for es recorrer cada posicion y pasando el elemento 
# dentro de una variable que mostrara finalmente el elemento

for i in array
    puts i
end

array.each do |i|
    puts i
end

for i in 1..10
    puts i 
end