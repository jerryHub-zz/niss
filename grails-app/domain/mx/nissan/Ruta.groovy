package mx.nissan

class Ruta implements Serializable{

  static hasMany = [tramos: Tramo]

  Antena origen
  Antena destino

  static constraints = {
    id()
    origen()
    destino()
  }

  static mapping = {
    table 'RUTA'
    id generator: 'identity'
  }

}