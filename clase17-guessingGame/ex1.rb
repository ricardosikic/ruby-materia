# en esta clase veremos un juego guessing game

respuesta_secreta = 'ricardo'
respuesta_usuario = ''
puntos = 0
respuesta_limite = 3
perdio_juego = false

while respuesta_usuario != respuesta_secreta and !perdio_juego
    
    if puntos < respuesta_limite
        puts 'cual es el nombre'
        respuesta_usuario = gets.chomp()
        puntos += 1
    else
        perdio_juego = true
    end
end

if respuesta_secreta == respuesta_usuario
    puts 'ganaste'
else 
    puts 'perdiste'
end


