package mx.nissan

class Recibo implements Serializable{

  Documento documento
  Date entrada
  Date salida
  Date dateCreated
  Date lastUpdated

  static constraints = {
    documento nullable : false
    entrada nullable: true
    salida  nullable: true
    dateCreated()
    lastUpdated()
  }

  static mapping = {
    table 'RECIBO'
    documento: 'ID_DOCUMENTO'
    entrada : 'ENTRDA'
    salida: 'SALIDA'
    id generator: 'identity'

    operador column: 'ID_OPERADOR'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'RECIBO_SEQ'])
  }
}