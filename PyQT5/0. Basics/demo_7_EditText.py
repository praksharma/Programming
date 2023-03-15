import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLineEdit


# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo_2") # window title

    def add_editText(self,x,y):
        editText = QLineEdit(self)
        editText.setText(f"Your text here")
        editText.move(x,y)
        editText.show()

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_editText(30,30)
    app_window.show()
    sys.exit(app.exec_())