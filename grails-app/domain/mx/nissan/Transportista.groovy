package mx.nissan

class Transportista implements Serializable{

  String nombre
  String ubicacion

  static constraints = {
    ubicacion nullable: true
  }

  static mapping = {
    table 'TRANSPORTISTA'
    id (generator:'sequence', params:[sequence:'TRANSPORT_SEQ'])
  }

  String toString() {
    nombre
  }
}