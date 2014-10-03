package mx.nissan

class Tag implements Serializable{

  String numTag
  Boolean asignado
  Transportista transportista
  TipoTransporte tipoTransporte

  static constraints = {
  }

  static mapping = {
    table 'TAG'
    id (generator:'sequence', params:[sequence:'TAG_SEQ'])
  }

  String toString() {
    numTag
  }

}