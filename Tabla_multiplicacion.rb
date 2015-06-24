#Diferentes implementaciones para calcular la tabla de multiplicar de un número

#Calcula la  tabla de multiplicar del número que recibe el método.
def multiplicar(num)
  b = 1
  10.times do
    c = num * b
    puts "#{num} x #{b} = #{c}"
    b = b + 1
  end
end

#Método que utiliza un segundo método para calcular la múltiplicación de un número.
def multiplication(a)
  b = 1
  10.times do
    c = multi(a,b)
    puts "#{a} * #{b} = #{c}"
    b = b + 1
  end
end

#Calcula la múltiplicación de los dos valores que recibe y regresa el resultado.
def multi(d,e)
resultado = d * e
end

multiplicar(2)
c = 10
multiplication(c)
