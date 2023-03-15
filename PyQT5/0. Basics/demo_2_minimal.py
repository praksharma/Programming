import sys
from PyQt5.QtWidgets import QApplication, QWidget
if __name__ == "__main__":
    app = QApplication(sys.argv)
    w = QWidget()
    w.resize(300,300) # resize window in pixels
    w.setWindowTitle("Demo_2") # window title
    w.show()
    sys.exit(app.exec_())