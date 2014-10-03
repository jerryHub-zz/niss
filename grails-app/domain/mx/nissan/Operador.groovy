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
    identificacion column: 'IDENTIFICACION', sqlType : 'clob'
    id (generator:'sequence', params:[sequence:'OPERADOR_SEQ'])
  }

  String toString() {
    "$nombre $paterno $materno"
  }

}