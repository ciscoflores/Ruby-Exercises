def minimo(array)
  min = array[0]
  for i in 0..4
    b = array[i]
    if min > b
      min = b
    end
  end
  puts "El valor minimo del array es #{min}"
end

minimo([20,5,100,1,27])

minimo([0,1,0,10,20])
