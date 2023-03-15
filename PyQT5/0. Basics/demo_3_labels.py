import sys
from PyQt5.QtWidgets import QApplication, QWidget, QLabel

# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(355,320)
        self.setWindowTitle("Demo_2") # window title

    
    def add_label(self,x,y):
        label = QLabel(self)
        label.setText(f"({x},{y})")
        label.move(x,y)
        label.show()

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_label(0,0)
    app_window.add_label(300,0)
    app_window.add_label(0,300)
    app_window.add_label(300,300)
    app_window.show()
    sys.exit(app.exec_())