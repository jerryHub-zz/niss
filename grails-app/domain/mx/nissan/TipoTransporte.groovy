package mx.nissan

class TipoTransporte implements Serializable{

  String nombre
  BigDecimal ancho
  BigDecimal largo
  BigDecimal alto
  BigDecimal pesoBruto
  BigDecimal capacidad
  Date dateCreated
  Date lastUpdated

  static constraints = {
    nombre()
    ancho()
    largo()
    alto()
    pesoBruto nullable: true
    capacidad nullable: true
  }

  static mapping = {
    table 'TIPO_TRANSPORTE'
    id generator: 'identity'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TIPO_TRANSP_SEQ'])
  }

  String toString() {
    nombre
  }

}