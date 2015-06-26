#Encuentra un numero dentro de un array y muestra cuantas veces
def encuentra(num, array)
  long = array.length
  exist = false
  count = 0
  for i in 0..(long -1)
    if num == array[i]
      exist = true
      count = count + 1
    end
  end
  if exist
    puts "el numero #{num} existe #{count} veces"
  else
    puts " el numero #{num} NO existe"
  end
end

encuentra(6, [1,2,4,6,4,4])
