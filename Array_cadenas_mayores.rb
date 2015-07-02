def cadena(array)
    array_result = array.select{ |x| x.length > 5}
    puts array_result
end

cadena(["This","is","a","test","of","an","script","written","by","a","novel","developer"])    
