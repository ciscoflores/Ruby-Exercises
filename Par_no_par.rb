#Determina si un número es par o impar
def parNoPar(num)
  if num % 2 == 0
    puts "#{num} es par"
  else
    puts "#{num} es impar"
  end

end

parNoPar(9)
parNoPar(100)
parNoPar(5)
parNoPar(0)
