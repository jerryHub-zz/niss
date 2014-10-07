package mx.nissan

class Tag implements Serializable{

  String numTag
  Boolean asignado
  Transportista transportista
  TipoTransporte tipoTransporte
  Date dateCreated
  Date lastUpdated

  static constraints = {
    transportista nullable: true
    tipoTransporte nullable: true
    asignado nullable: true
  }

  static mapping = {
    table 'TAG'
    id generator: 'identity'
    transportista column: 'ID_TRANSPORTISTA'
    tipoTransporte column: 'ID_TIPO_TRANSPORTE'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TAG_SEQ'])
  }

  String toString() {
    numTag
  }

}