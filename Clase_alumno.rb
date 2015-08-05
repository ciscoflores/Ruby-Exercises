#Script para crear una clase, sus metodos y objetos
#Se emplea set y get para asignar y obtener los valores
class Alumno
        def initialize(name = "", last_name = "", id = 0, birthday = "01/01/1990")
            @name = name
            @last_name = last_name
            @id = id
            @clave = ""
            @birthday = birthday
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

        def set_birthday(birthday)
            @birthday = birthday
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

        def get_birthday
            return @birthday
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
                @clave = @clave + cadena2[0]
            end
            values2 = @last_name.split(" ")
            if values2.count == 1
                cadena3 = values2[0]
                @clave = @clave + cadena3[0..1]
            else
                cadena3 = values2[0]
                @clave = @clave + cadena3[0]
                cadena4 = values2[1]
                @clave = @clave + cadena4[0]
            end
            values3 = @birthday.split("/")
                @clave = @clave + values3[0] + values3[1] + values3[2][2..3] + "-" + @id.to_s
                #cadena5 = values3[2]
                #@clave = @clave + cadena5[2..3]
            @clave.upcase!
      end
end
#Creacion de un nuevo alumno haciendo uso del set
alumnito = Alumno.new
alumnito.set_name("Jose Francisco")
alumnito.set_last_name("Flores nada")
alumnito.set_id(107)
alumnito.set_birthday("01/01/1950")

#Creacion de un nuevo alumno con valores
alumnita = Alumno.new("Lola","Contreras",03,"01/24/1988")

puts "El nombre del alumno es #{alumnito.get_name} #{alumnito.get_last_name} con no. de control #{alumnito.get_id}"
puts "El nombre del alumno es #{alumnita.get_name} #{alumnita.get_last_name} con no. de control #{alumnita.get_id}"
puts "La clave del alumno #{alumnito.get_name} es #{alumnito.clave}"
puts "La clave del alumno #{alumnita.get_name} es #{alumnita.clave}"
