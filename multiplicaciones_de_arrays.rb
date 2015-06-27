#Recibir dos arrays, comparar si el numero de elementos es iguales y multiplicar su contenido
def multiplica(array1, array2)
  if array1.length == array2.length
    array3 = []
    for i in 0..((array1.length) - 1)
      array3<<(array1[i] * array2[i])
    end
      puts "El resultado es #{array3}"
  end
end

multiplica([1,2,3,4,5],[6,7,8,9,10])
