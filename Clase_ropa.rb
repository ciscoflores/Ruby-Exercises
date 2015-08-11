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
      return @datos_tienda.get_precio_venta
  end

  def get_objeto_datos_tienda
    return @datos_tienda
  end
end

class Datos_tienda

  def initialize(precio_lista = 0, precio_venta = 0, descuento = 0, iva = 0, inventario = 0)
      @precio_lista = precio_lista
      @precio_venta = precio_venta
      @descuento = descuento
      @iva = iva
      @inventario = inventario
  end

  def set_precio_lista(precio_lista)
      @precio_lista = precio_lista
  end

  def set_precio_venta(precio_venta)
      @precio_venta = precio_venta
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

end

prenda_uno = Ropa.new("mediana", "manga larga", "azul", "algodon", "blusa", "adulto", "femenino")
prenda_dos = Ropa.new("grande", "entubado", "mezclilla", "algodon", "pantalon", "niño", "masculino")
prenda_tres = Ropa.new("chica", "largo", "poliester", "algodon", "vestido", "niña", "femenino")
tienda_uno = Datos_tienda.new(25, 50, 10, 16, 89)
#Se hara uso de los datos de la tienda uno en el nuevo objeto de prenda_uno
prenda_uno.set_datos_tienda(tienda_uno)
array = []
array.push(prenda_uno)
array.push(prenda_dos)
array.push(prenda_tres)

var_datos_tienda = prenda_uno.get_objeto_datos_tienda

puts prenda_uno.get_color
puts prenda_uno.get_precio_venta
puts var_datos_tienda.get_precio_venta
