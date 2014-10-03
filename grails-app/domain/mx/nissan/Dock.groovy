package mx.nissan

class Dock implements Serializable{

  String descripcion
  static constraints = {
  }

  static mapping = {
    table 'DOCK'
    id (generator:'sequence', params:[sequence:'DOCK_SEQ'])
  }

  String toString() {
    descripcion
  }

}