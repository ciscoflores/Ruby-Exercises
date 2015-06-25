#Encontrar los valores minimo y maximo de un array 
def minimo_maximo(array)
  min = array[0]
  max = array[0]
  for i in 0..4
    b = array[i]
    if min > b
       min = b
    end
    if max < b
       max = b
    end
  end
  puts "El valor minimo del array es #{min}, el maximo es #{max}"
end

minimo_maximo([20,5,100,1,27])

minimo_maximo([0,1,0,3,2])
