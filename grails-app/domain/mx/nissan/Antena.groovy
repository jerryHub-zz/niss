package mx.nissan

class Antena implements Serializable{

  Integer numAntena
  String ip
  String localizacion
  BigDecimal posicionX
  BigDecimal posicionY
  Date dateCreated
  Date lastUpdated

  static constraints = {
    posicionX nullable: true
    posicionY nullable: true
  }

  static mapping = {
    table 'ANTENA'
    id generator: 'identity'
    //id (generator:'org.hibernate.id.enhanced.SequenceStyleGenerator', params:[sequence:'TAG_SEQ'])
  }

  String toString() {
    ip
  }

}