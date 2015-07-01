#Metodo para elminar los elementos menores del numero ingresado
#Cisco investiga que paso!!
def eliminar(array, num)
  for i in 0..((array.length) - 1)
    if array[i] < num
        array.delete_at i
    end
  end
  puts "El resultado es #{array}"
end

eliminar([1,2,3,4,5],3)
