#Hash Con los Estados y sus abreviaciones
Estados = {"Colima" => "CM","San Luis Potosi" => "SLP","Baja Califonia" => "BC","Oaxaca" => "OA","Estado de Mexico" => "EM"}
puts Estados.values
OtroHash = {}
Estados.each do | key, value|
    OtroHash[value]= " "
end
puts OtroHash

#Capitales = OtroHash
Capitales = {"CM" => "", "BC" => ""}
Capitales["CM"] = "Colima"
Capitales["BC"] = "Tijuana"

puts Capitales
puts OtroHash

#Se toman las llaves y valores de Estados y los valores de Capitales que su llave coincida con el valor de Estado 
Estados.each do |key, variable|
    puts "El estado de #{key} y su capital es #{Capitales[variable]}"
end
