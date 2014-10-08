package mx.nissan.service

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


  def initializeGraphics(def imgPath, def mazeImage){
    def g2 = mazeImage.createGraphics()
    def img1 = ImageIO.read(new File(imgPath))
    g2.setBackground(Color.WHITE)
    g2.fillRect(0, 0, IMG_WIDTH, IMG_HEIGTH)
    g2.drawImage(img1, 0, 0, IMG_WIDTH, IMG_HEIGTH, null)
    g2
  }

  def drawListOfPoints(def g2, def pointsList){
    g2.setColor(Color.RED)
    pointsList.each{ points ->
      g2.drawLine(points.a.x, points.a.y, points.b.x, points.b.y)
    }
  }

}