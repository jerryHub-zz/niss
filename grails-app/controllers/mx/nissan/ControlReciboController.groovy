package mx.nissan
import grails.converters.JSON

class ControlReciboController {

  def index(){
    def listaTransportista = Transportista.list()
    [listaTransportista: listaTransportista]
  }

  def searchDocument(){
    def strDocument =  params.strDocument
    def document = Documento.findByDocumento(strDocument)
    def docData = [:]
    if(document){
      docData = [
        id: document.id,
        documento: document.documento,
        transportista: [ id: document.transportista.id, nombre: document.transportista.nombre ],
        tipoTransporte: [ id: document.tipoTransporte.id, nombre: document.tipoTransporte.nombre ],
        operador: [ id: document.operador.id, nombre: "$document.operador.nombre $document.operador.paterno" ],
        tag: document.tag.numTag,
        tractor: document.tractor,
        placas: document.placas,
        caja1: document.caja1,
        caja2: document.caja2
      ]
      def recibo = Recibo.findByDocumento(document)
      if(recibo){
        println "se recupero $recibo"

        docData.horaEntrada = recibo.entrada

        docData.horaSalida = recibo.salida
      }
    }
    render docData as JSON
  }

  def saveControlRecibo(){
    def horaEntrada = params.horaEntrada
    def horaSalida = params.horaSalida
    def idDocumento = params.id
    println "hola $horaEntrada $horaSalida $idDocumento"

    def documento = Documento.get(idDocumento)
    if (documento){
      def recibo = Recibo.findByDocumento(documento)
      if(recibo){
        recibo.entrada = horaEntrada
        recibo.salida = horaSalida
      }else{
        recibo = new Recibo(entrada: horaEntrada, salida: horaSalida, documento:documento, dateCreated:new Date() )
      }
      println recibo
      recibo.save()
    }
    redirect(action: 'index')
  }
}