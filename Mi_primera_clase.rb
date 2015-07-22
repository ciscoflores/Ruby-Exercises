#Script para crear una clase, sus metodos y objetos
#Se usan las mismas variables de una instancia @base, @altura
class Rectangulo
    def initialize(base = 0, altura = 0)
        @base = base
        @altura = altura
    end

    # area = base * altura
    def area
        return @base * @altura
    end

    # perimetro = 2 * (base + altura)
    def perimetro(base, altura)
        @base = base
        @altura = altura
        return 2 * (@base + @altura)
    end
end

Rectangulito = Rectangulo.new

#puts Rectangulito.class
puts "El area del Rectangulito es #{Rectangulito.area}"
puts "El perimetro del Rectangulito es #{Rectangulito.perimetro(2.3, 6)}"
#Los parametros toman valores en .perimetro y por ello el area ya no vale 0
puts "El area del Rectangulito es #{Rectangulito.area}"

Rectangulote = Rectangulo.new(10, 4.8)

puts "El area del Rectangulote es #{Rectangulote.area}"
