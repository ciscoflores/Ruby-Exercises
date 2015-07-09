# Método que recibe un número, calcula su tabla de multiplicar y lo almacena en un array.
# En un segundo ciclo imprime el resultado de la tabla de multiplicar.
def multiplica(num)
b = 1
array=[]
  10.times do
    result = num * b
    array.push(result)
    b = b + 1
  end

  for a in 0..9
    puts "El resultado no #{a + 1} es #{array[a]}"
  end

  c = 0
  10.times do
      puts "El resultado no #{c + 1} es #{array[c]}"
    c =  c + 1
  end

#Mismo metodo pero implementando .each do
  d = 1
  array.each do |elemento|
     puts "El resultado de #{num} * #{d} es #{elemento}"
     d = d + 1
  end

#Mismo metodo pero implementando .each_index do
  array.each_index do |i|
      puts "El resultado de #{num} * #{i + 1} es: #{array[i]}"
  end

end

multiplica(5)
