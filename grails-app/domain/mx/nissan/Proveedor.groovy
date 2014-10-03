package mx.nissan

class Proveedor implements Serializable{

  String id
  String nombre
  String ubicacion

  static constraints = {
    ubicacion nullable: true
  }

  static mapping = {
    table 'PROVEEDOR'
  }

  String toString() {
    nombre
  }

}