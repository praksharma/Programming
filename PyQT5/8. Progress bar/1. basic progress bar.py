import sys
from PyQt5.QtWidgets import QApplication, QWidget, QProgressBar, QPushButton
from PyQt5.QtCore import QBasicTimer

# We use the QWidget as the base class of our class
class ProgressBarDemo(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.progressBar = QProgressBar(self)
        

if __name__ == "__main__":
    app = QApplication(sys.argv)

    w = ProgressBarDemo()
    w.show()
    sys.exit(app.exec_())

    
