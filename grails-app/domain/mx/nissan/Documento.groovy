package mx.nissan

class Documento implements Serializable {

  String documento
  Transportista transportista
  TipoTransporte tipoTransporte
  Operador operador
  Tag tag
  String tractor
  String placas
  String caja1
  String caja2
  String identificacion

  static constraints = {
    documento nullable: false
    transportista nullable: true
    tipoTransporte nullable: true
    tractor nullable: true
    placas nullable: true
    caja1 nullable: true
    caja2 nullable: true
    identificacion nullable: true
  }

  static mapping = {
    table 'DOCUMENTO'
    id generator: 'identity'
    transportista column : 'ID_TRANSPORTISTA'
    tipoTransporte column: 'ID_TIPOTRANSPORTE'
    operador column: 'ID_OPERADOR'
    tag column: 'ID_TAG'
    identificacion column: 'IDENTIFICACION', sqlType : 'blob'

    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TAG_SEQ'])
  }
}
