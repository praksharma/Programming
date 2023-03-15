import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QHBoxLayout

# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.setWindowTitle("Demo") # window title

    def add_HBoxLayout(self):
        button1 = QPushButton("Button 1")
        button2 = QPushButton("Button 2")
        button3 = QPushButton("Button 3")

        hbox = QHBoxLayout(self)
        hbox.addWidget(button1)
        hbox.addWidget(button2)
        hbox.addWidget(button3)


if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_HBoxLayout()
    app_window.show()

    sys.exit(app.exec_())