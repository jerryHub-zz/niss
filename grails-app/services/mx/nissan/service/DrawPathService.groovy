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
    println "Dibuja rutaaaa"

    def mazeImage = new BufferedImage(IMG_WIDTH, IMG_HEIGTH , BufferedImage.TYPE_INT_RGB)
    def g2 = mazeImage.createGraphics()

    def img1 = ImageIO.read(new File(imgPath))
    g2.setBackground(Color.WHITE)
    g2.fillRect(0, 0, IMG_WIDTH, IMG_HEIGTH)
    g2.drawImage(img1, 0, 0, IMG_WIDTH, IMG_HEIGTH, null)
    g2.setColor(Color.RED)
    g2.drawLine(100,100,400,400)

    def baos = new ByteArrayOutputStream()
    ImageIO.write( mazeImage, "png", baos)
    baos.flush()
    byte[] imageInByte = baos.toByteArray()
    baos.close()

    imageInByte
  }

}