#Recibe un array y muestra el cuadrado de sus elementos
def cuadrado(array)
    for i in 0..((array.length) - 1)
      array[i] = array[i] * array[i]
    end
    puts "El cuadrado de los numeros es #{array}"
end

cuadrado([2,5,7,8])
