package mx.nissan

class TipoTransporte implements Serializable{

  String nombre
  BigDecimal ancho
  BigDecimal largo
  BigDecimal alto
  BigDecimal pesoBruto
  BigDecimal capacidad

  static constraints = {
    pesoBruto nullable: true
    capacidad nullable: true
  }

  static mapping = {
    table 'TIPO_TRANSPORTE'
    id (generator:'sequence', params:[sequence:'TIPO_TRANSP_SEQ'])
  }

  String toString() {
    nombre
  }

}