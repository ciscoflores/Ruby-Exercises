#Multiplica un numero por un array y guarda el resultado en un nuevo array
def multiplica(array, num)
  result= []
  for i in 0..((array.length) - 1)
    result<<num * array[i]
  end
  puts "El resultado es #{result}"
end

#Misma operacion pero haciendo uso del metodo .map y el bloque de elementos
def multiplica2(array2, num2)
    array2 = array2.map { |x| x * num2 }
    puts array2
end

#Misma operacion, haciendo uso de .each do
def multiplica3 (array3, num3)
    result3 = []
    array3.each do |x|
        result3.push x * num3
    end
    puts "El resultado es #{result3}"
end

multiplica3([4,5,7,8], 5)
