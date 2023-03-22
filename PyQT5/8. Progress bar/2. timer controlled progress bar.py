import sys
from PyQt5.QtWidgets import QApplication, QWidget, QProgressBar, QPushButton
from PyQt5.QtCore import QBasicTimer

"""
Syntax : window.setGeometry(x, y, width, height)

Arguments : It takes 4 arguments :
1. X co-ordinate
2. Y co-ordinate
3. Width of the window to be set
4. Height of the window to be set
"""

# We use the QWidget as the base class of our class
class ProgressBarDemo(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.progressBar = QProgressBar(self)
        self.progressBar.setGeometry(30,40,200,25) # see above definition 
        #self.progressBar.move(30,10) # use this to move the progress bar
        
        # A start/stop push button
        self.btnStart = QPushButton('Start',self)
        self.btnStart.move(30,80)
        self.btnStart.clicked.connect(self.ProgressBarControl)

        self.btnReset = QPushButton('Reset',self)
        self.btnReset.move(120,80)
        self.btnReset.clicked.connect(self.resetProgressBar)

        self.timer = QBasicTimer()
        self.step = 0

    # controlled by the start/stop pushbutton
    def ProgressBarControl(self):
        if self.timer.isActive(): # if the button is active then stop and change the button label to "start"
            self.timer.stop()
            self.btnStart.setText('Start')
        else: # if progress bar is not active, then start it and change the push button label to stop.
            self.timer.start(100, self) # 100 is the final time
            self.btnStart.setText('Stop')

    # this is a predefined event handler in Pyqt5 and can be reimplemented in the subclass to control anything at each timestep.
    # https://het.as.utexas.edu/HET/Software/PyQt/qobject.html#timerEvent
    # If you rename this function to something else, the progress bar would not update in each time step.
    def timerEvent(self, event):
        if self.step >= 100:
            self.timer.stop() # stop the times if we reached the max value of the progress bar
            self.btnStart.setText('Start')

        self.step +=1 # increment the step in each timestep
        self.progressBar.setValue(self.step) # set the step to the progress bar

    def resetProgressBar(self):
        self.step = 0 # reset the step to 0
        self.progressBar.setValue(self.step) # set the zero step in the progress bar
        self.timer.stop() # stop the timer.

if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = ProgressBarDemo()
    w.show()
    sys.exit(app.exec_())

    
