package mx.nissan

class Dock implements Serializable{

  String descripcion
  Date dateCreated
  Date lastUpdated

  static constraints = {
    descripcion()
    dateCreated()
    lastUpdated()
  }

  static mapping = {
    table 'DOCK'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'DOCK_SEQ'])
    id generator: 'identity'
  }

  String toString() {
    descripcion
  }

}