package mx.nissan

class Rampa implements Serializable{

  String descripcion
  static constraints = {
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