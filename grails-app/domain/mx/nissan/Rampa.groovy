package mx.nissan

class Rampa implements Serializable{

  String descripcion
  static constraints = {
  }

  static mapping = {
    table 'RAMPA'
    id (generator:'sequence', params:[sequence:'RAMPA_SEQ'])
  }

  String toString() {
    descripcion
  }

}