package mx.nissan

class Recibo implements Serializable{

  String documento
  Transportista transportista
  TipoTransporte tipoTransporte
  Operador operador

  static constraints = {
  }

  static mapping = {
    table 'RECIBO'
    id generator: 'identity'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'RECIBO_SEQ'])
  }
}