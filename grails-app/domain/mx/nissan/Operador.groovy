package mx.nissan

class Operador implements Serializable{

  String nombre
  String paterno
  String materno
  String identificacion

  static constraints = {
    materno nullable: true
  }

  static mapping = {
    table 'OPERADOR'
    //identificacion column: 'IDENTIFICACION', sqlType : 'raw'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'OPERADOR_SEQ'])
    id generator: 'identity'
  }

  String toString() {
    "$nombre $paterno $materno"
  }

}