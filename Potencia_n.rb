#Recibe un número base y un número potencia, para elevar a dicha potencia.
def elevar(base, potencia)
  resultado = base
  repeticion = potencia - 1
  repeticion.times do
    resultado = resultado * base
  end
  puts "El resultado es #{resultado}"
end

elevar(5,3)
elevar(4,6)
