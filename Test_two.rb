#Método que dice si el número que recibe es positivo o negativo.
def check_sign(number)
  if number > 0
     puts "#{number} is positive"
  else
     puts "#{number} is negative"
  end
end

check_sign(10)
