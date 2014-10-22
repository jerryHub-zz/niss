package mx.nissan

class ControlReciboController {

  def index(){
    def listaTransportista = Transportista.list()
    println listaTransportista
    [listaTransportista: listaTransportista]
  }

  def searchDocument(){
    println "Buscando documento"
    render 5
  }
}