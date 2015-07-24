#Script para crear una clase, sus metodos y objetos
#Se emplea set y get para asignar y obtener los valores
class Alumno
        def initialize(name = "", last_name = "", id = 0)
            @name = name
            @last_name = last_name
            @id = id
            @clave = ""
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

#Split separa @name donde hay espacio y lo guarda en cadena como un nuevo array
#Se usa values[0] para hacer referencia al indice deseado
#Se emplea [0..1] para definir el rango de indices que se obtendran
        def clave
            values = @name.split(" ")
            if values.count == 1
                cadena = values[0]
                @clave = cadena[0..1]
            else
                cadena = values[0]
                @clave = cadena[0]
                cadena2 = values[1]
                @clave = @clave + cadena2
            end
            values2 = @last_name.split(" ")
            if values2.count == 1
                cadena3 = values2[0]
                @clave = @clave + cadena3[0..1]
            else
                cadena3 = values2[0]
                @clave = cadena3[0]
                cadena4 = values2[1]
                @clave = @clave + cadena4
            end
            @clave.upcase!
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
puts "La clave del alumno #{alumnito.get_name} es #{alumnito.clave}"
