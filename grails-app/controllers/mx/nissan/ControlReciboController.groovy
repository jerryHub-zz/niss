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
        status: true,
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
        def date = recibo.entrada

        def horaEntrada = [
          horaEntrada_day : date.getAt(Calendar.DAY_OF_MONTH),
          horaEntrada_month : date.getAt(Calendar.MONTH)+1,
          horaEntrada_year :  date.getAt(Calendar.YEAR).toString().padLeft(2, '0'),
          horaEntrada_hour :  date.getAt(Calendar.HOUR).toString().padLeft(2, '0'),
          horaEntrada_minute :  date.getAt(Calendar.MINUTE).toString().padLeft(2, '0')
        ]

        def horaSalida = [
          horaSalida_day : date.getAt(Calendar.DAY_OF_MONTH),
          horaSalida_month : date.getAt(Calendar.MONTH)+1,
          horaSalida_year :  date.getAt(Calendar.YEAR).toString().padLeft(2, '0'),
          horaSalida_hour :  date.getAt(Calendar.HOUR).toString().padLeft(2, '0'),
          horaSalida_minute :  date.getAt(Calendar.MINUTE).toString().padLeft(2, '0')
        ]

        docData.horaEntrada = horaEntrada
        docData.horaSalida = horaSalida
      }
    }else{
      docData.status = false
    }

    render docData as JSON
  }

  def saveControlRecibo(){
    def horaEntrada = params.horaEntrada
    def horaSalida = params.horaSalida
    def idDocumento = params.id

    def documento = Documento.get(idDocumento)
    if (documento){
      def recibo = Recibo.findByDocumento(documento)
      if(recibo){
        recibo.entrada = horaEntrada
        recibo.salida = horaSalida
      }else{
        recibo = new Recibo(entrada: horaEntrada, salida: horaSalida, documento:documento, dateCreated:new Date() )
      }
      println recibo.entrada
      recibo.save()
    }
    redirect(action: 'index')
  }
}