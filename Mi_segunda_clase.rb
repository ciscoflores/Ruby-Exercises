#Script para crear una clase, sus metodos y objetos
#Calcular el area y perimetro de un Circulo
class Circulo
    def initialize(radio = 0, diametro = 0)
        @radio = radio
        @diametro = diametro
        @pi = 3.14159265359
    end

    # area = pi * radio^2
    def area
        return @pi * (@radio * @radio)
    end

    # perimetro = 2pi * radio
    def perimetro
        return (@pi * 2) * @radio
    end
end

Otro_Circulo = Circulo.new(5,10)

#puts Otro_Circulo.class
puts "El area del Circulo es #{Otro_Circulo.area}"
puts "El perimetro del Circulo es #{Otro_Circulo.perimetro}"
