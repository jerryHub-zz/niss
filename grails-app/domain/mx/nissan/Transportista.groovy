package mx.nissan

class Transportista implements Serializable{

  String nombre
  String ubicacion
  Date dateCreated
  Date lastUpdated

  static constraints = {
    nombre()
    ubicacion nullable: true
  }

  static mapping = {
    table 'TRANSPORTISTA'
    id generator: 'identity'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TRANSPORT_SEQ'])
  }

  String toString() {
    nombre
  }
}