class Avion
  def initialize(tipo_avion = "", cap_combustible = 0, peso_avion = 0, millas_recorrido = 0, cap_pasajeros = 0, cap_carga_equipaje = 0, limite_peso_avion = 0)
      @tipo_avion = tipo_avion
      @cap_combustible = cap_combustible
      @peso_avion = peso_avion
      @millas_recorrido = millas_recorrido
      @cap_pasajeros = cap_pasajeros
      @cap_carga_equipaje = cap_carga_equipaje
      @array_pasajeros = []
      @limite_peso_avion = limite_peso_avion
      @combustible_actual = 0
  end

  def set_tipo_avion(tipo_avion)
      @tipo_avion = tipo_avion
  end

  def set_cap_combustible(cap_combustible)
      @cap_combustible = cap_combustible
  end

  def set_peso_avion(peso_avion)
      @peso_avion = peso_avion
  end

  def set_millas_recorridas(millas_recorrido)
      @millas_recorrido = millas_recorrido
  end

  def set_cap_pasajeros(cap_pasajeros)
      @cap_pasajeros = cap_pasajeros
  end

  def set_cap_carga_equipaje(cap_carga_equipaje)
      @cap_carga_equipaje = cap_carga_equipaje
  end

  def set_array_pasajeros(array_pasajeros)
      @array_pasajeros = array_pasajeros
  end

  def set_limite_peso_avion(limite_peso_avion)
      @limite_peso_avion = limite_peso_avion
  end

  def set_combustible_actual(combustible_actual)
      if combustible_actual <= get_cap_combustible
         @combustible_actual = combustible_actual
      else
        puts "No es posible agregar esa cantidad de combustible"
      end
  end

  def get_tipo_avion
      return @tipo_avion
  end

  def get_cap_combustible
      return @cap_combustible
  end

  def get_peso_avion
      return @peso_avion
  end

  def get_millas_recorridas
      return @millas_recorrido
  end

  def get_cap_pasajeros
      return @cap_pasajeros
  end

  def get_no_pasajeros
      return @array_pasajeros.count
  end

  def get_cap_carga_equipaje
      return @cap_carga_equipaje
  end

  def get_array_pasajeros
      return @array_pasajeros
  end

  def get_limite_peso_avions
      return @limite_peso_avion
  end

  def get_combustible_actual
      return @combustible_actual
  end
#Se hace uso de self para hacer referencia a metodos dentro de la misma clase
  def get_peso_total_avion
     return @peso_avion + self.get_total_carga_equipaje + self.get_total_peso_pasajeros
  end
#Se calcula el combustible gastado en base al peso total del avion
  def get_calculo_combustible
      combustible = 0
      if get_peso_total_avion <= 30
         millas = 14.0
      elsif get_peso_total_avion <= 40
         millas = 16.5
      elsif get_peso_total_avion <= 60
         millas = 19.0
      elsif get_peso_total_avion <= 100
         millas = 23.4
       else
         millas = 29.0
      end
      combustible = @millas_recorrido / millas
      if get_combustible_actual < combustible
         puts "Gasolina insuficiente"
       end
      return combustible
  end
#Se accesa al peso_total_maletas en cada pasajero y se suman para obtener el total de la carga del equipaje
  def get_total_carga_equipaje
      total = 0
      @array_pasajeros.each do |pasajero|
        total = total + pasajero.get_peso_total_maletas
      end
      return total / 1000.0
  end

  def get_total_peso_pasajeros
      total_peso = 0
      @array_pasajeros.each do |pasajeros|
        total_peso = total_peso + pasajeros.get_peso_pasajero
      end
      return total_peso /1000.0
  end
#Se emplea un if anidado agregando al pasajero cuando se cumplen ambas condiciones
  def add_pasajero(pasajero)
      if get_peso_total_avion + ((pasajero.get_peso_pasajero + pasajero.get_peso_total_maletas) / 1000.0) <= @limite_peso_avion
        if (get_no_pasajeros + 1) <= get_cap_pasajeros
          @array_pasajeros.push(pasajero)
        else
          puts "Suerte para la proxima siga participando"
        end
      else
        puts "Bajale a las tortas gordito"
      end
  end

end

class Pasajero
  def initialize(peso_pasajero = 0, peso_total_maletas = 0, cantidad_maleta = 0)
      @peso_pasajero = peso_pasajero
      @peso_total_maletas = peso_total_maletas
      @cantidad_maleta = cantidad_maleta
  end

  def set_peso_pasajero(peso_pasajero)
      @peso_pasajero = peso_pasajero
  end

  def set_peso_total_maletas(peso_total_maletas)
      @peso_total_maletas = peso_total_maletas
  end

  def set_cantidad_maleta(cantidad_maleta)
      @cantidad_maleta = cantidad_maleta
  end

  def get_peso_pasajero
      return @peso_pasajero
  end

  def get_peso_total_maletas
      return @peso_total_maletas
  end

  def get_cantidad_maleta
      return @cantidad_maleta
  end
end

avioncito = Avion.new("Chafita", 200, 60, 1000, 3, 120, 60)
avioncito.set_combustible_actual(30)
pasajerito_uno = Pasajero.new(80, 23, 2)
pasajerita_uno = Pasajero.new(45, 10, 1)
pasajerote_uno = Pasajero.new(200, 25, 2)
pasajerote_dos = Pasajero.new(80, 20, 3)
avioncito.add_pasajero(pasajerito_uno)
avioncito.add_pasajero(pasajerita_uno)
avioncito.add_pasajero(pasajerote_uno)
avioncito.add_pasajero(pasajerote_dos)
puts "Cantidad de pasajeros #{avioncito.get_no_pasajeros}"
puts avioncito.get_peso_total_avion
puts "Cantidad de litros necesarios para recorrer #{avioncito.get_millas_recorridas} millas es de #{avioncito.get_calculo_combustible} lts. "
puts "Capacidad maxima de combustible: #{avioncito.get_cap_combustible} y combustible actual: #{avioncito.get_combustible_actual}"
