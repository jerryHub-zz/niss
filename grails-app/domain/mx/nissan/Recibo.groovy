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
    id (generator:'sequence', params:[sequence:'RECIBO_SEQ'])
  }
}