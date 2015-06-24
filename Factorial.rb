#Determina el factorial del número que recibe el método.
def factorial(num)
  res = 1
  for a in 1..num
    res = res * a
    #a = a + 1
  end
  puts "El factorial de #{num} es #{res}"
end

#ciclo para determinar el factorial de los números en el rango de 5 a 20
for a in 5..20
  factorial(a)
end

#factorial(20)
