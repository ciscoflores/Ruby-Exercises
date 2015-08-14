#Crea dos clases Ropa & Datos_tienda cada una con sus parametros
#Se hace referencia dentro de la clase Ropa a la clase Datos_tienda
class Ropa
  def initialize(talla = "", modelo = "", color = "", material = "", tipo_prenda = "", tipo_usuario = "", genero = "")
    @talla = talla
    @modelo = modelo
    @color = color
    @material = material
    @tipo_prenda = tipo_prenda
    @tipo_usuario = tipo_usuario
    @genero = genero
    @datos_tienda = Datos_tienda.new
  end

  def set_talla(talla)
      @talla = talla
  end

  def set_modelo(modelo)
      @modelo = modelo
  end

  def set_color(color)
      @color = color
  end

  def set_material(material)
      @material = material
  end

  def set_tipo_prenda(tipo_prenda)
      @tipo_prenda = tipo_prenda
  end

  def set_tipo_usuario(tipo_usuario)
      @tipo_usuario = tipo_usuario
  end

  def set_genero(genero)
      @genero = genero
  end

  def set_datos_tienda(datos_tienda)
     @datos_tienda = datos_tienda
  end

  def set_precio_lista(precio_lista)
      @datos_tienda.set_precio_lista(precio_lista)
  end

  def set_descuento(descuento)
      @datos_tienda.set_descuento(descuento)
  end

  def set_iva(iva)
      @datos_tienda.set_iva(iva)
  end

  def set_inventario(inventario)
      @datos_tienda.set_inventario(inventario)
  end

  def set_cantidad(cantidad)
      @datos_tienda.set_cantidad(cantidad)
  end

  def get_talla
      return @talla
  end

  def get_modelo
      return @modelo
  end

  def get_color
      return @color
  end

  def get_material
      return @material
  end

  def get_tipo_prenda
      return @tipo_prenda
  end

  def get_tipo_usuario
      return @tipo_usuario
  end

  def get_genero
      return @genero
  end

  def get_datos_tienda
      return @datos_tienda
  end
#Se accede al parametro precio_venta de la clase Datos_tienda
  def get_precio_venta
      @datos_tienda.set_precio_venta
      return @datos_tienda.get_precio_venta
  end

  def get_precio_lista
      return @datos_tienda.get_precio_lista
  end

  def get_descuento
      return @datos_tienda.get_descuento
  end

  def get_iva
      return @datos_tienda.get_iva
  end

  def get_inventario
      return @datos_tienda.get_inventario
  end

  def get_cantidad
     return @datos_tienda.get_cantidad
  end

  def get_objeto_datos_tienda
    return @datos_tienda
  end

end

class Datos_tienda

  def initialize(precio_lista = 0, descuento = 0, iva = 0, inventario = 0, cantidad = 0)
      @precio_lista = precio_lista
      @precio_venta = 0
      @descuento = descuento
      @iva = iva
      @inventario = inventario
      @cantidad = cantidad
  end

  def set_precio_lista(precio_lista)
      @precio_lista = precio_lista
  end

  def set_precio_venta
      precio_iva = (@precio_lista * (1 + ( @iva / 100.0) ) )
      @precio_venta =  precio_iva - ( precio_iva * ( @descuento / 100.0 ) )
  end

  def set_descuento(descuento)
      @descuento = descuento
  end

  def set_iva(iva)
      @iva = iva
  end

  def set_inventario(inventario)
      @inventario = inventario
  end

  def set_cantidad(cantidad)
      @cantidad = cantidad
  end

  def get_precio_lista
      return @precio_lista
  end

  def get_precio_venta
      return @precio_venta
  end

  def get_descuento
      return @descuento
  end

  def get_iva
      return @iva
  end

  def get_inventario
      return @inventario
  end

  def get_cantidad
      return @cantidad
  end

end

prenda_uno = Ropa.new("mediana", "manga larga", "azul", "algodon", "blusa", "adulto", "femenino")
prenda_dos = Ropa.new("grande", "entubado", "mezclilla", "algodon", "pantalon", "niño", "masculino")
prenda_tres = Ropa.new("chica", "largo", "poliester", "algodon", "vestido", "niña", "femenino")
#tienda_uno = Datos_tienda.new(25, 50, 10, 16, 89)
#Se hara uso de los datos de la tienda uno en el nuevo objeto de prenda_uno
#prenda_uno.set_datos_tienda(tienda_uno)

prenda_uno.set_iva(16)
prenda_uno.set_precio_lista(45)
prenda_uno.set_cantidad(20)

prenda_dos.set_iva(16)
prenda_dos.set_precio_lista(35.5)
prenda_dos.set_descuento(10)
prenda_dos.set_cantidad(5)

prenda_tres.set_iva(16)
prenda_tres.set_precio_lista(16)
prenda_tres.set_descuento(5)
prenda_tres.set_cantidad(2)

array = []
array.push(prenda_uno)
array.push(prenda_dos)
array.push(prenda_tres)

cantidad_total = 0
total_pagar = 0
array.each do |prenda|
  puts "El total a pagar por #{prenda.get_cantidad} prendas es $#{prenda.get_cantidad * prenda.get_precio_venta} con un precio de venta de $#{prenda.get_precio_venta}"
  cantidad_total = prenda.get_cantidad + cantidad_total
  total_pagar = (prenda.get_cantidad * prenda.get_precio_venta) + total_pagar
end
puts "La cantidad total de prendas es #{cantidad_total} con un total a pagar de $#{total_pagar}"
#var_datos_tienda = prenda_uno.get_objeto_datos_tienda
#puts prenda_uno.get_color

puts prenda_uno.get_precio_venta
puts prenda_uno.get_cantidad
