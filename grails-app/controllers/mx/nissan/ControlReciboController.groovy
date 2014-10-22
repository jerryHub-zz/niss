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
    }
    render docData as JSON
  }
}