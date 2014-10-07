package mx.nissan

class HistorialAntena implements Serializable{


  Antena antena
  Date fecha
  String localizacion
  Date dateCreated
  Date lastUpdated

  static constraints = {
  }

  static mapping = {
    table 'HISTORIAL_ANTENA'
    id generator: 'identity'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TAG_SEQ'])
  }

}