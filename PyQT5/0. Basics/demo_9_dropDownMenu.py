import sys
from PyQt5.QtWidgets import QApplication, QWidget, QComboBox


# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo_2") # window title

    def add_ComboBox(self,x,y):
        ComboBox = QComboBox(self)
        ComboBox.addItems(["Item 1", "Item 2" , "Item 3"])
        ComboBox.move(x,y)
        ComboBox.show()

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_ComboBox(30,30)
    app_window.show()
    sys.exit(app.exec_())