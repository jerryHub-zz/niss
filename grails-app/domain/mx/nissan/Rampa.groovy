package mx.nissan

class Rampa implements Serializable{

  String descripcion
  Date dateCreated
  Date lastUpdated

  static constraints = {
    descripcion()
    dateCreated()
    lastUpdated()
  }

  static mapping = {
    table 'RAMPA'
    id generator: 'identity'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'RAMPA_SEQ'])
  }

  String toString() {
    descripcion
  }

}