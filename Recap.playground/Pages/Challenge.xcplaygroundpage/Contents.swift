/*:
 [Previous](@previous)
 
 # Challenge
 
 Mr. Gordon was at IKEA a few weeks ago and noticed this pattern:
 
 ![pattern.jpg](pattern.jpg "pattern")
 
 Use any of the concepts you have learned so far in this course to reproduce the wallpaper pattern shown above.
 
 - note: The photo was not taken "straight on" against the wall, so the image has perspective.  You do not need to reproduce that part of the image.  In other words, no need to create the appearance of "depth", just reproduce colours and shapes.
 
 - callout(Hint): Look for elements of repetition in the pattern. Try to reproduce a portion of the image, then simply *repeat* the pattern.
 
 ## Remember
 
 Commit your work as you make progress on this page.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 520, height: 480)

for x in stride(from: 40, through: 520, by: 80){
    for y in stride(from: 0, through: 240, by: 240){
        canvas.drawShapesWithBorders = false
// Bigger Brown Circles
    canvas.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: y + 40, width: 70, height: 70)
    canvas.drawEllipse(centreX: x, centreY: y + 200, width: 70, height: 70)
// Bigger Yellow Circles
    canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 80, width: 70, height: 70)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 160, width: 70, height: 70)
// Orange Circles
    canvas.fillColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: y + 40, width: 50, height: 50)
    canvas.drawEllipse(centreX: x, centreY: y + 200, width: 50, height: 50)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 80, width: 50, height: 50)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 160, width: 50, height: 50)
// Smaller Yellow Circles
    canvas.fillColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
    canvas.drawEllipse(centreX: x, centreY: y + 40, width: 30, height: 30)
    canvas.drawEllipse(centreX: x, centreY: y + 200, width: 30, height: 30)
// Smaller Brown Circles
    canvas.fillColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 80, width: 30, height: 30)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 160, width: 30, height: 30)
// Very Small White Circles
    canvas.fillColor = Color.white
    canvas.drawEllipse(centreX: x, centreY: y + 40, width: 10, height: 10)
    canvas.drawEllipse(centreX: x, centreY: y + 200, width: 10, height: 10)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 80, width: 10, height: 10)
    canvas.drawEllipse(centreX: x - 40, centreY: y + 160, width: 10, height: 10)
    }
}
// The White Line
for x in stride(from: 0, through: 520, by: 40) {
    for y in stride(from: 45, through: 405, by: 120) {
    canvas.lineColor = Color.white
    canvas.defaultLineWidth = 10
    canvas.drawLine(fromX: x, fromY: y, toX: x, toY: y + 30)
   
    }
}

// The Brown, Yellow and Orange other lines
for x in stride(from: 0, through: 520, by: 80) {
    for y in stride(from: 0, through: 480, by: 120) {
// Brown
    canvas.lineColor = Color(hue: 26, saturation: 69, brightness: 37, alpha: 100)
    canvas.drawLine(fromX: x + 10, fromY: y + 45, toX: x + 10, toY: y + 75)
    canvas.drawLine(fromX: x + 70, fromY: y + 45, toX: x + 70, toY: y + 75)
// Orange
    canvas.lineColor = Color(hue: 22, saturation: 93, brightness: 90, alpha: 100)
    canvas.drawLine(fromX: x + 20, fromY: y + 45, toX: x + 20, toY: y + 75)
    canvas.drawLine(fromX: x + 60, fromY: y + 45, toX: x + 60, toY: y + 75)
// Yellow
    canvas.lineColor = Color(hue: 53, saturation: 93, brightness: 98, alpha: 100)
    canvas.drawLine(fromX: x + 30, fromY: y + 45, toX: x + 30, toY: y + 75)
    canvas.drawLine(fromX: x + 50, fromY: y + 45, toX: x + 50, toY: y + 75)
    }
}
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
