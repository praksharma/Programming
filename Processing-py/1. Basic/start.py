from processing_py import *
app = App(800,400) # create window: width, height

while(True):
   app.background(0,0,0) # set background:  red, green, blue
   app.fill(255,255,0) # set color for objects: red, green, blue
   app.ellipse(app.mouseX,app.mouseY,50,50) # draw a circle: center_x, center_y, size_x, size_y
   app.redraw() # refresh the window
