#Muestra los numeros pares dentro de un array
def encuentra(array)
  long = array.length
  for i in 0..(long -1)
    if array[i] % 2 == 0
      puts"El numero #{array[i]} es par"
    end
  end
end

encuentra([1,2,4,5,7,8])
