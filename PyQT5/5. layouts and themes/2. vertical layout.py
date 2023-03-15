import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QVBoxLayout

# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.setWindowTitle("Demo") # window title

    def add_VBoxLayout(self):
        button1 = QPushButton("Button 1")
        button2 = QPushButton("Button 2")
        button3 = QPushButton("Button 3")

        vbox = QVBoxLayout(self)
        vbox.addWidget(button1)
        vbox.addWidget(button2)
        vbox.addWidget(button3)


if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_VBoxLayout()
    app_window.show()

    sys.exit(app.exec_())