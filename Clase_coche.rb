#Script para crear la clase Coche con sus respectivas variables y metodo para calcular el consumo_promedio
class Coche
    def initialize(modelo = "", anio = 0, marca = "", no_pasajeros = 0, kilom_actual = "", cap_combu = 0, nivel_combu_actual = 0, placas = "")
        @modelo = modelo
        @anio = anio
        @marca = marca
        @no_pasajeros = no_pasajeros
        @kilom_actual = kilom_actual
        @cap_combu = cap_combu
        @nivel_combu_actual = nivel_combu_actual
        @placas = placas
        @consumo_promedio = 0
    end

    def set_modelo(modelo)
        @modelo = modelo
    end

    def set_anio(anio)
        @anio = anio
    end

    def set_marca(marca)
        @marca = marca
    end

    def set_no_pasajeros(no_pasajeros)
        @no_pasajeros = no_pasajeros
    end

    def set_kilom_actual(kilom_actual)
        @kilom_actual = kilom_actual
    end

    def set_cap_combu(cap_combu)
        @cap_combu = cap_combu
    end

    def set_nivel_combu_actual(nivel_combu_actual)
        @nivel_combu_actual = nivel_combu_actual
    end

    def set_placas(placas)
        @placas = placas
    end

    def get_modelo
        return @modelo
    end

    def get_anio
        return @anio
    end

    def get_marca
        return @marca
    end

    def get_no_pasajeros
        return @no_pasajeros
    end

    def get_kilom_actual
        return @kilom_actual
    end

    def get_cap_combu
        return @cap_combu
    end

    def get_nivel_combu_actual
        return @nivel_combu_actual
    end

    def get_placas
        return @placas
    end

    def consumo_promedio(kilom_final, nivel_combu_final)
        @consumo_promedio = (kilom_final - @kilom_actual) / (@nivel_combu_actual - nivel_combu_final)
        @kilom_actual = kilom_final
        return @consumo_promedio
    end

end

mi_cochecito = Coche.new
mi_cochecito.set_marca("honda")
mi_cochecito.set_modelo("cr-v")
mi_cochecito.set_cap_combu(40)
mi_cochecito.set_kilom_actual(10000)
mi_cochecito.set_nivel_combu_actual(30)
puts "Kilometraje actual #{mi_cochecito.get_kilom_actual}"
puts mi_cochecito.consumo_promedio(10200,5)
puts "Kilometraje actual #{mi_cochecito.get_kilom_actual}"
