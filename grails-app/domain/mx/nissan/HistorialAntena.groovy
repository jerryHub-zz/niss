package mx.nissan

class HistorialAntena implements Serializable{

  Date dateCreated
  Date lastUpdated

  Antena antena
  Date fecha
  Tag tag


  static constraints = {
    antena()
    fecha()
    tag()
  }

  static mapping = {
    table 'HISTORIAL_ANTENA'
    id generator: 'identity'
    antena column: 'ID_ANTENA'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TAG_SEQ'])
  }

}