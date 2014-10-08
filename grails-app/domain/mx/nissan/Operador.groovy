package mx.nissan

class Operador implements Serializable{

  String nombre
  String paterno
  String materno
  String identificacion
  Date dateCreated
  Date lastUpdated

  static constraints = {
    nombre()
    paterno()
    materno nullable: true
    identificacion()
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