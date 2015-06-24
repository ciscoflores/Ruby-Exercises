# Método que realiza un ciclo del númeor uno al número que recibe como parámetro.
# Llamando a un segundo metodo que determina si es número primo o no.
def rango(numero)
  var = 1
  numero.times do
    result = es_numero_primo?(var)
    if result
      puts "#{var} is prime"
    end
    var = var + 1
  end
end

# Determina si el número que recibe es primo, buscando que el número no tenga divisores entre el 2 y el número-1
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

rango(100)
