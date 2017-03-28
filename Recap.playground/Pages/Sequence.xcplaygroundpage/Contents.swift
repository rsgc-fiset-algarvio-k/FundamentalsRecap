/*:
 [Previous](@previous) / [Next](@next)
 
 # Sequence
 
 Some new shape types and options have been added to the Canvas class.
 
 Use this new functionality, and your [knowledge of colour](http://russellgordon.ca/rsgc/2016-17/ics2o/HSB_Colour_Model_-_Summary_-_Swift_3.pdf), to reproduce this abstract version of the eBay logo:
 
 ![new_ebay_logo.png](new_ebay_logo.jpg "Overlapping Shapes Logo")
 
 Color and alpha (transparency) matter.
 
 Try reproducing this image for practice.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 400)

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false
// The Circles
canvas.fillColor = Color(hue: 1, saturation: 100, brightness: 100, alpha: 75)
canvas.drawEllipse(centreX: 75, centreY: 150, width: 150, height: 150)

// The yellow rectangle
canvas.fillColor = Color(hue: 50, saturation: 100, brightness: 100, alpha: 75)
canvas.drawRoundedRectangle(centreX: 300, centreY: 200, width: 100, height: 150)

// The blue rectangle
canvas.lineColor = Color(hue: 225, saturation: 100, brightness: 100, alpha: 75)
canvas.drawLine(fromX: 200, fromY: 0, toX: 200, toY: 400, lineWidth: 150)

// The triangle
canvas.fillColor = Color(hue: 130, saturation: 100, brightness: 100, alpha: 75)
var points : [NSPoint] = []
points.append(NSPoint(x: 300, y: 300))
points.append(NSPoint(x: 500, y: 300))
points.append(NSPoint(x: 400, y: 100))

canvas.drawCustomShape(with: points)
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
