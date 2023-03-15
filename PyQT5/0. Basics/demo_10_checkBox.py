import sys
from PyQt5.QtWidgets import QApplication, QWidget, QCheckBox


# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo_2") # window title

    def add_CheckBox(self,x,y):
        # syntax : QRadioButton(str, parent: QWidget = None)
        CheckBox = QCheckBox("Check Box", self)
        CheckBox.setChecked(False)
        CheckBox.move(x,y)
        CheckBox.show()

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_CheckBox(30,30)
    app_window.show()
    sys.exit(app.exec_())