#Determina cuales son los números pares del número 1 al número que recibe el método
def listaPar(num)
  otro = 1
  num.times do
    if otro % 2 == 0
      puts "#{otro} es par"
    end
    otro = otro +1
  end
end

listaPar(10)
