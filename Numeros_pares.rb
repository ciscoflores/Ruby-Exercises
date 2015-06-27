#Muestra los numeros pares e impares dentro de un array y los almacena en otro array 
def encuentra(array)
  long = array.length
  par = []
  no_Par = []
  for i in 0..(long -1)
    if array[i] % 2 == 0
      par.push(array[i])
    else
      no_Par.push(array[i])
    end
  end
  puts "Los numeros #{par} son pares y los numeros #{no_Par} son impares"
end

encuentra([1,2,4,5,7,8,0])
