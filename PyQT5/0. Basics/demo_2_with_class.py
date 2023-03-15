import sys
from PyQt5.QtWidgets import QApplication, QWidget


# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo_2") # window title

if __name__ == "__main__":
    app = QApplication(sys.argv)

    w = MyApp()
    w.show()
    sys.exit(app.exec_())