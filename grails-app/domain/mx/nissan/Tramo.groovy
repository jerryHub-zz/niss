package mx.nissan

class Tramo implements Serializable{

  static belongsTo = [ ruta: Ruta ]

  BigDecimal posicionX
  BigDecimal posicionY
  Integer orden

  static constraints = {
    posicionX()
    posicionY()
    orden nullable: true
  }

  static mapping = {
    table 'TRAMO'
  }
}