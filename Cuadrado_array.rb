#Recibe un array y muestra el cuadrado de sus elementos
def cuadrado(array)
    for i in 0..((array.length) - 1)
      array[i] = array[i] * array[i]
    end
    puts "El cuadrado de los numeros es #{array}"
end

#Misma operacion haciendo uso de metodo .map
def cuadrado2(array2)
    array2 = array2.map { |x| x * x}
    puts array2
end

#Mismo metodo haciendo uso de .each do
def cuadrado3(array3)
    result = []
    array3.each do |x|
        result.push (x * x)
    end
    puts result
end

#Mismo metodo haciendo uso de .each_index do
def cuadrado4(array4)
    array4.each_index do |i|
        array4[i] = (array4[i] * array4[i])
    end
    puts array4
end

cuadrado4([2,5,7,8])
