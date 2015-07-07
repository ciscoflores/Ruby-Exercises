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

def cuadrado3(array3)
    result = []
    array3.each do |x|
        result.push (x * x)
    end
    puts result
end

cuadrado3([2,5,7,8])
