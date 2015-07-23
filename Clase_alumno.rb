#Script para crear una clase, sus metodos y objetos
#Se emplea set y get para asignar y obtener los valores
class Alumno
        def initialize(name = "", last_name = "", id = 0)
            @name = name
            @last_name = last_name
            @id = id
        end

        #Metodos de Set
        def set_name(name)
            @name = name
        end

        def set_last_name(last_name)
            @last_name = last_name
        end

        def set_id(id)
            @id = id
        end

        #Metodos de Get
        def get_name
            return @name
        end

        def get_last_name
            return @last_name
        end

        def get_id
            return @id
        end
end
#Creacion de un nuevo alumno haciendo uso del set
alumnito = Alumno.new
alumnito.set_name("Cisco")
alumnito.set_last_name("Achaques")
alumnito.set_id(007)

#Creacion de un nuevo alumno con valores 
alumnita = Alumno.new("Lola","Contreras",03)

puts "El nombre del alumno es #{alumnito.get_name} #{alumnito.get_last_name} con no. de control #{alumnito.get_id}"
puts "El nombre del alumno es #{alumnita.get_name} #{alumnita.get_last_name} con no. de control #{alumnita.get_id}"
