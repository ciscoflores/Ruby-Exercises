#Encontrar los valores minimo y maximo de un array y muestra el indice
def minimo_maximo(array)
  min = array[0]
  max = array[0]
  long = array.length
  for i in 0..(long -1)
    b = array[i]
    if min > b
       min = b
       ind = i
    end
    if max < b
       max = b
       ind2 = i
    end
  end
  puts "El valor minimo del array es #{min} en el indice #{ind}, el maximo es #{max} en el indice #{ind2}"
end

minimo_maximo([20,20,3])
