import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton

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

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_PushButton(150,150)
    app_window.show()
    sys.exit(app.exec_())