class Avion
  def initialize(tipo_avion = "", cap_combustible = 0, peso_avion = 0, millas_recorrido = 0, cap_pasajeros = 0, no_pasajeros = 0, cap_carga_equipaje = 0)
      @tipo_avion = tipo_avion
      @cap_combustible = cap_combustible
      @peso_avion = peso_avion
      @millas_recorrido = peso_avion
      @cap_pasajeros = cap_pasajeros
      @no_pasajeros = no_pasajeros
      @cap_carga_equipaje = cap_carga_equipaje
      @array_pasajeros = []
  end

  def set_tipo_avion(tipo_avion)
      @tipo_avion = tipo_avion
  end

  def set_cap_combustible()cap_combustible
      @cap_combustible = cap_combustible
  end

  def set_peso_avion(peso_avion)
      @peso_avion = peso_avion
  end

  def set_millas_recorridas(millas_recorrido)
      @millas_recorrido = millas_recorrido
  end

  def set_cap_pasajeros(cap_pasajeros)
      @cap_combustible = cap_combustible
  end

  def set_no_pasajeros(no_pasajeros)
      @no_pasajeros = no_pasajeros
  end

  def set_cap_carga_equipaje(cap_carga_equipaje)
      @cap_carga_equipaje = cap_carga_equipaje
  end

  def set_array_pasajeros(array_pasajeros)
      @array_pasajeros = array_pasajeros
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
      return @no_pasajeros
  end

  def get_cap_carga_equipaje
      return @cap_carga_equipaje
  end

  def get_array_pasajeros
      return @array_pasajeros
  end
end

class Pasajero
  def initialize(peso_pasajero  = 0, peso_maleta = 0, cantidad_maleta = 0)
      @peso_pasajero = peso_pasajero
      @peso_maleta = peso_maleta
      @cantidad_maleta = cantidad_maleta
  end

  def set_peso_pasajero(peso_pasajero)
      @peso_pasajero = peso_pasajero
  end

  def set_peso_maleta(peso_maleta)
      @peso_maleta = peso_maleta
  end

  def set_cantidad_maleta(cantidad_maleta)
      @cantidad_maleta = cantidad_maleta
  end

  def get_peso_pasajero
      return @peso_pasajero
  end

  def get_peso_maleta
      return @peso_maleta
  end

  def get_cantidad_maleta
      return @cantidad_maleta
  end
end
