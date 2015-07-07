#Metodo para elminar los elementos menores del numero ingresado
#Cisco investiga que paso!!
def eliminar(array, num)
  #for i in 0..((array.length) - 1)
    #if array.at(i) < num
    #    puts "debería de funcionar"
    #    #array.delete_at(1)
    #end
  #end
  array.reject!{ |x| x < num }
  puts "El resultado es #{array}"
end

eliminar([1,2,3,4,5],3)
