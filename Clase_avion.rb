class Avion
  def initialize(tipo_avion = "", cap_combustible = 0, peso_avion = 0, millas_recorrido = 0, cap_pasajeros = 0, cap_carga_equipaje = 0, limite_peso_avion = 0, limite_peso_equipaje_pasajero = 0)
      @tipo_avion = tipo_avion
      @cap_combustible = cap_combustible
      @peso_avion = peso_avion
      @millas_recorrido = millas_recorrido
      @cap_pasajeros = cap_pasajeros
      @cap_carga_equipaje = cap_carga_equipaje
      @array_pasajeros = []
      @limite_peso_avion = limite_peso_avion
      @combustible_actual = 0
      @limite_peso_equipaje_pasajero = limite_peso_equipaje_pasajero
      @asiento = 1
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

  def set_limite_peso_equipaje_pasajero(limite_peso_equipaje_pasajero)
      @limite_peso_equipaje_pasajero = limite_peso_equipaje_pasajero
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

  def get_limite_peso_equipaje_pasajero
      return @limite_peso_equipaje_pasajero
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
      #If 1
      if get_peso_total_avion + ((pasajero.get_peso_pasajero + pasajero.get_peso_total_maletas) / 1000.0) <= @limite_peso_avion
        #Bloque 1 donde se cumplio la condicion del If 1
          #If 2
          if (get_no_pasajeros + 1) <= get_cap_pasajeros
            #Bloque 2 donde se cumplio la condificion del If 2
            #If informativo
            if pasajero.get_peso_total_maletas > get_limite_peso_equipaje_pasajero
              puts "Su equipaje excede el limite de peso permitido necesita pagar el exceso"
            end

            @array_pasajeros.push(pasajero)
            pasajero.set_numero_asiento(@asiento) #se asigna el numero de asiento al pasajero recien agregado
            @asiento = @asiento + 1
            #Aqui termina el Bloque 2
          else #Cuano no se cumplio el If 2
            puts "Suerte para la proxima siga participando"
          end
        #Aqui termina el Bloque 1
      else #Cuando no se cumplio el If 1
        puts "Bajale a las tortas gordito"
      end
  end

  def remove_pasajero(pasajero) #se remueve el objeto
    @array_pasajeros.delete(pasajero)
  end

  def listado_pasajeros
      @array_pasajeros.each do |pasajero|
        puts "ID pasajero: #{pasajero.get_id_pasajero}, numero de asiento: #{pasajero.get_numero_asiento}, numero de maletas: #{pasajero.get_cantidad_maleta}, peso de equipaje: #{pasajero.get_peso_total_maletas}"
      end
  end

  def remove_pasajero_con_ID(id) #se busca dentro del array el id y remueve el que sea igual
      #@array_pasajeros.delete_if {|pasajero| pasajero.get_id_pasajero == id}
      #@array_pasajeros.each do |pasajero|
      #  if pasajero.get_id_pasajero == id
      #     pasajero = nil
      #     return
      #  end
      #end
     @array_pasajeros.each_index do |index| #se recorre el array por indice
        pasajero = @array_pasajeros[index]  # la variable pasajero almacena el elemento/objeto que hay en ese indice del array
        if pasajero.get_id_pasajero == id   # si el id del pasajero es igual al id buscado
         @array_pasajeros[index] = Pasajero.new  # en el indice del pasajero se almacena un pasajero nuevo(vacio)
          return  #detiene el each do donde encontro el id
        end
      end
  end

  def another_remove_pasajero(id)
      @array_pasajeros.delete_if {|pasajero| pasajero.get_id_pasajero == id} #se elimina al pasajero por completo (no se dejan asientos vacios)
      @array_pasajeros.each do |pasajero|
        if pasajero.get_id_pasajero == id
           pasajero = nil
           break
        end
      end
  end

  def lista_asientos_ocupados
      @array_pasajeros.each do |pasajero|
        if pasajero.get_numero_asiento > 0  #solo asigna asientos si el pasajero no es "fantasma"
           puts "No. de asiento #{pasajero.get_numero_asiento} ocupado"
         end
      end
  end

  def lista_asientos_disponibles
    array_asientos = []
    for asiento in 1..@cap_pasajeros #primero se enlistan los asientos del avion desde 1 hasta la cap_pasajeros y se guardan en un array
        array_asientos.push(asiento)
    end
    @array_pasajeros.each do |pasajero|
      array_asientos.delete(pasajero.get_numero_asiento) #Se eliminan del array los que ya estan ocupados basandose en el numero de asiento
    end
    array_asientos.each do |asiento|
      puts "No. de asiento #{asiento} disponible" #se imprimen los restantes
    end
  end

  def another_reordena_asientos
      asiento = 1
      @array_pasajeros.each do |pasajero|
          pasajero.set_numero_asiento(asiento)  #se reescriben los numeros de asientos de los pasajeros iniciando en 1
          asiento = asiento + 1
      end
  end

  def reordena_asientos
      index_ocupado = 0
      @array_pasajeros.each_index do |index|
        pasajero = @array_pasajeros[index]
        if pasajero.get_numero_asiento == 0 #si el pasajero esta vacio
           index_inicial_sig_a = index + 1 #para determinar donde inicia el rango del sub_array
           index_final_sig_a = @array_pasajeros.count - 1 #para determinar donde termina el rango del sub_array
           index_ocupado = index + busca_asiento_ocupado(@array_pasajeros[index_inicial_sig_a..index_final_sig_a]) #donde vamos a encontrar el pasajero que se movera
           pasajero_temp = @array_pasajeros[index_ocupado] #el indice que vamos a mover
           pasajero_temp.set_numero_asiento(index + 1) #le asignamos el numero de asiento
           @array_pasajeros[index] = pasajero_temp #se asigna al pasajero al indice que estaba vacio
           @array_pasajeros[index_ocupado] = Pasajero.new #se crea un pasajero nuevo vacio
        end
      end
  end

  def busca_asiento_ocupado(sub_array) #cuantos saltos hay que dar para encontrar el asiento ocupado
      sub_array.each_index do |index|
        pasajero = sub_array[index]
         if pasajero.get_numero_asiento >= 1 #siempre vefiricar la posicion de los IF
            return index + 1
            break
         end
      end
      return 0
  end

end

class Pasajero
  @@ID = 0
  def initialize(peso_pasajero = 0, peso_total_maletas = 0, cantidad_maleta = 0)
      @peso_pasajero = peso_pasajero
      @peso_total_maletas = peso_total_maletas
      @cantidad_maleta = cantidad_maleta
      @@ID = @@ID + 1  #Cada que se agrega un pasajero al ID se le suma 1
      @id_pasajero = @@ID #El id_pasajero va aumentando en 1
      @numero_asiento = 0
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

  def set_numero_asiento(numero_asiento)
      @numero_asiento = numero_asiento
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

  def get_id_pasajero
      return @id_pasajero
  end

  def get_numero_asiento
      return @numero_asiento
  end
end

avioncito = Avion.new("Chafita", 200, 60, 1000, 20, 120, 62, 30)
avioncito.set_combustible_actual(30)
pasajerito_uno = Pasajero.new(80, 23, 2)
pasajerita_uno = Pasajero.new(45, 50, 1)
pasajerote_uno = Pasajero.new(200, 25, 2)
pasajerote_dos = Pasajero.new(80, 50, 3)
pasajerote_tres = Pasajero.new(80, 50, 3)
pasajerote_cuatro = Pasajero.new(80, 50, 3)
avioncito.add_pasajero(pasajerito_uno)
avioncito.add_pasajero(pasajerita_uno)
avioncito.add_pasajero(pasajerote_uno)
avioncito.add_pasajero(pasajerote_dos)
puts "Cantidad de pasajeros #{avioncito.get_no_pasajeros}"
puts avioncito.get_peso_total_avion
puts "Cantidad de litros necesarios para recorrer #{avioncito.get_millas_recorridas} millas es de #{avioncito.get_calculo_combustible} lts. "
puts "Capacidad maxima de combustible: #{avioncito.get_cap_combustible} y combustible actual: #{avioncito.get_combustible_actual}"
#puts pasajerito_uno.get_id_pasajero
#puts pasajerita_uno.get_id_pasajero
#puts pasajerote_uno.get_id_pasajero
#puts pasajerote_dos.get_id_pasajero
#avioncito.remove_pasajero(pasajerote_uno)
#avioncito.remove_pasajero_con_ID(3)
avioncito.another_remove_pasajero(3)
avioncito.add_pasajero(pasajerote_uno)
avioncito.add_pasajero(pasajerote_tres)
avioncito.add_pasajero(pasajerote_cuatro)
#avioncito.remove_pasajero_con_ID(5)
avioncito.another_remove_pasajero(5)
avioncito.listado_pasajeros
avioncito.lista_asientos_ocupados
avioncito.lista_asientos_disponibles
#avioncito.reordena_asientos
avioncito.another_reordena_asientos
avioncito.lista_asientos_ocupados
avioncito.lista_asientos_disponibles
