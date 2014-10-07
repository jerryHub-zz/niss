package mx.nissan

class ShowDiagramController{

  def drawPathService

  def index(){
    def historyTags = HistorialAntena.list()
    def orderedHistoryTags = []
    historyTags.groupBy{ it.tag }.each{ k, v ->
      def tagData = [
        tag: k, history: v.sort{ it.fecha }
      ]
      orderedHistoryTags.push(tagData)
    }
    println orderedHistoryTags
    [ orderedHistoryTags: orderedHistoryTags]
  }

  def show(){
  }

  def getPath(){

    def imgPath = request.getSession().getServletContext().getRealPath("/images/planta.png")
    def img = drawPathService.drawTestPath(imgPath)

    //...
    response.setHeader('Content-length', img.length.toString())
    response.contentType = 'image/png' // or the appropriate image content type
    response.outputStream << img
    response.outputStream.flush()
  }
}