#Muestra si los numeros de un array son pares llamando a otro metodo
def primo(array)
  for i in 0..((array.length) - 1)
    result = es_numero_primo?(array[i])
    if result
      puts "El numero #{array[i]} es primo"
    end
  end
end

def  es_numero_primo?(num)
  found_divider = false
  for d in 2..(num - 1)
    if num % d == 0
      found_divider =true
    end
  end
  if found_divider == false
    resultado = true
  else
    resultado = false
  end
end

primo([2,5,7,8,10])
