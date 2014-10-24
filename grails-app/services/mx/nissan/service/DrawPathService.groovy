package mx.nissan.service

import mx.nissan.*
import sun.awt.image.FileImageSource

import java.nio.file.Files
import java.nio.file.Paths
import java.awt.*
import java.awt.image.*
import javax.swing.*
import javax.imageio.ImageIO
import java.io.InputStream

class DrawPathService{

  def final Integer IMG_WIDTH = 800
  def final Integer IMG_HEIGTH = 500

  def drawTestPath(def imgPath){

    def mazeImage = new BufferedImage(IMG_WIDTH, IMG_HEIGTH , BufferedImage.TYPE_INT_RGB)
    def g2 = initializeGraphics(imgPath, mazeImage)
    def testPoints = [
      [ a: [x: 139, y:477], b: [ x: 144, y: 358] ],
      [ a: [x: 144, y: 358], b: [ x: 250, y: 357] ],
      [ a: [x: 250, y: 357], b: [ x: 510, y: 380] ],
      [ a: [x: 510, y: 380], b: [ x: 513, y: 315] ],
      [ a: [x: 513, y: 315], b: [ x: 653, y: 444] ]
    ]
    drawListOfPoints(g2, testPoints)
    def baos = new ByteArrayOutputStream()
    ImageIO.write( mazeImage, "png", baos)
    baos.flush()
    byte[] imageInByte = baos.toByteArray()
    baos.close()

    imageInByte
  }

  def drawTagHistory(def imgPath, def numTag){
    def tag = Tag.findByNumTag(numTag)
    def historyTag = HistorialAntena.findAllByTag(tag, [sort: 'fecha', order: 'asc'])
    def pointsList = []
    def linesPath = []
    historyTag.eachWithIndex { historyEntry, index ->
      pointsList.push([x: historyEntry.antena.posicionX.intValue(), y: historyEntry.antena.posicionY.intValue(), type: 'antenna'])
      if(index < historyTag.size() - 1) {
        def path = Ruta.findByOrigenAndDestino(historyEntry.antena, historyTag[index + 1].antena)
        if(path && path.tramos.size() > 0){
          path.tramos.sort{ it.orden}.each{ section ->
            pointsList.push([x: section.posicionX.intValue(), y: section.posicionY.intValue(), type: 'corner'])
          }
        }
      }
    }

    pointsList.eachWithIndex{ pointA, index ->
      if(index < pointsList.size() - 1){
        def pointB = pointsList[index + 1]
        def line = [a: pointA, b: pointB]
        linesPath.push(line)
      }
    }

    def mazeImage = new BufferedImage(IMG_WIDTH, IMG_HEIGTH , BufferedImage.TYPE_INT_RGB)
    def g2 = initializeGraphics(imgPath, mazeImage)

    drawListOfPoints(g2, linesPath)
    drawPointsCount(g2, pointsList.grep{ it.type == 'antenna' })
    def baos = new ByteArrayOutputStream()
    ImageIO.write( mazeImage, "png", baos)
    baos.flush()
    byte[] imageInByte = baos.toByteArray()
    baos.close()

    imageInByte
  }


  def initializeGraphics(def imgPath, def mazeImage){
    def g2 = mazeImage.createGraphics()
    def img1 = ImageIO.read(new File(imgPath))
    g2.setBackground(Color.WHITE)
    g2.fillRect(0, 0, IMG_WIDTH, IMG_HEIGTH)
    g2.drawImage(img1, 0, 0, IMG_WIDTH, IMG_HEIGTH, null)
    g2
  }

  def drawListOfPoints(def g2, def linesPath){
    g2.setColor(Color.RED)
    g2.setStroke(new BasicStroke(2,1,BasicStroke.JOIN_MITER))
    def y = 10
    def count = 1
    linesPath.each{ line ->

      g2.setColor(Color.RED)
      g2.drawLine(line.a.x, line.a.y, line.b.x, line.b.y)
      g2.setColor(Color.BLUE)
     //g2.drawString(count + "- Punto"+ points.antena, 100, y);
      y+=15
      count++
    }
  }

  def drawPointsCount(g2, def antennas){
    g2.setFont(new Font("default", Font.BOLD, 16))
    g2.setColor(Color.RED)
    antennas.eachWithIndex{ antenna, i ->
      g2.drawString((i+1).toString(), antenna.x, antenna.y)
    }
  }

}