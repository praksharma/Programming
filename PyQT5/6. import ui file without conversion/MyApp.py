import sys
from PyQt5.QtWidgets import QApplication, QWidget
from PyQt5 import uic

# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        uic.loadUi('app.ui', self)
        
        # Access the undefined pushButton
        # The objectId is in QT Designer
        self.pushButton.clicked.connect(self.printvalue)

    def printvalue(self):
        print(self.lineEdit.text())


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app_window = MyApp()
    app_window.show()

    sys.exit(app.exec_())