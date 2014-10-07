package mx.nissan

class Recibo implements Serializable{

  String documento
  Transportista transportista
  TipoTransporte tipoTransporte
  Operador operador
  Date dateCreated
  Date lastUpdated

  static constraints = {
  }

  static mapping = {
    table 'RECIBO'
    id generator: 'identity'
    transportista column: 'ID_TRANSPORTISTA'
    tipoTransporte column: 'ID_TIPO_TRANSPORTE'
    operador column: 'ID_OPERADOR'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'RECIBO_SEQ'])
  }
}