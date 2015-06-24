#Deterina el dia de la semana dependiendo del número que recibe el método
def semana(dia)

  if dia == 1
    resultado = "Es Domingo"
  elsif dia == 2
    resultado = "Es Lunes"
  elsif dia == 3
    resultado = "Es martes"
  elsif dia == 4
    resultado = "Es miercoles"
  elsif dia == 5
    resultado = "Es jueves"
  elsif dia == 6
    resultado = "Es viernes"
  elsif dia == 7
    resultado = "Es sabado"
  else
    resultado = "pos que dia quieres?"
  end
  puts resultado
end

semana(1)
semana(3)
semana(0)
