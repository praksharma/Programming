import sys
from PyQt5.QtWidgets import QApplication, QWidget

# Absolute basic to run a empty window
if __name__ == "__main__":
    app = QApplication(sys.argv) # every UI app must create an instance of QApplication
    # sys.argv is the list of command-line parameters that you can pass to the application when launching it through the shell or while automating the interface.
    
    # QWidget is the base class of all UI objects in Qt
    w = QWidget()
    #w.resize(300,300)
    #w.setWindowTitle("Guru99") # defaults to the filename if windows title not provided
    w.show()  # show the window
    # exit when we click the close button.
    sys.exit(app.exec_())