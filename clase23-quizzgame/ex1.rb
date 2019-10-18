class Pregunta
    attr_accessor :prompt, :respuesta

    def initialize(prompt, respuesta)
        @prompt = prompt
        @respuesta = respuesta
    end
end

p1 = 'que año es\n(a) 2018\n(b)2019'
p2 = 'que mes es\n(a)noviembre\n(b)octubre'

preguntas = Array[
    Pregunta.new(p1, 'b'),
    Pregunta.new(p2, 'b')
]

def run_quiz(preguntas)
    respuesta = ''
    puntaje = 0
    for pregunta in preguntas
        puts pregunta.prompt
        respuesta = gets.chomp()
        if respuesta == pregunta.respuesta
            puntaje = puntaje + 1
        end
    end
    puts 'tu puntaje es ' + puntaje.to_s


end

puts run_quiz(preguntas)