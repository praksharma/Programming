"""
Here, use a function called QPushButton.clicked.connect(dialog).
dialog is a function which is execurted when the PushButton is pressed and we can put anything in that function
In this example we pop-up a dialog box when the PushButton is pressed
"""

import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QMessageBox

def dialog_box():
    mbox = QMessageBox()
    mbox.setWindowTitle("Superuser access denied")
    mbox.setText(f"username is not in the sudoers file.")
    mbox.setDetailedText("This incident will be reported.")
    mbox.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
    mbox.exec_()



# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(355,320)
        self.setWindowTitle("Demo_4") # window title

    
    def add_PushButton(self,x,y):
        PushButton = QPushButton(self)
        PushButton.setText(f"PushButton")
        PushButton.move(x,y)
        PushButton.show()
        PushButton.clicked.connect(dialog_box)

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_PushButton(150,150)
    app_window.show()
    sys.exit(app.exec_())