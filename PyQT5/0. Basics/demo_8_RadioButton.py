import sys
from PyQt5.QtWidgets import QApplication, QWidget, QRadioButton


# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo_2") # window title

    def add_RadioButton(self,x,y):
        # syntax : QRadioButton(str, parent: QWidget = None)
        RadioButton = QRadioButton("Radio button text", self)
        RadioButton.setChecked(False)
        RadioButton.move(x,y)
        RadioButton.show()

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_RadioButton(30,30)
    app_window.show()
    sys.exit(app.exec_())