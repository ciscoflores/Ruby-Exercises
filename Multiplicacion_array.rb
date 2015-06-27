#Multiplica un numero por un array y guarda el resultado en un nuevo array
def multiplica(array, num)
  result= []
  for i in 0..((array.length) - 1)
    result<<num * array[i]
  end
  puts "El resultado es #{result}"
end

multiplica([4,5,7,8], 5)
