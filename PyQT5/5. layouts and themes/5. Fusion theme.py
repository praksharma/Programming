import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QGridLayout
from PyQt5.QtGui import QPalette # import colouring palette
from PyQt5.QtCore import Qt

# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.setWindowTitle("Demo") # window title

    # Add grid layout
    def add_GridLayout(self):
        grid = QGridLayout(self)

        count = 0
        for i in range(3):
            for j in range(3):
                count= count +1
                grid.addWidget(QPushButton(f"Button {count}"), i, j)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setStyle("Fusion") # set Fusion Theme

    # Colour Palette
    qp = QPalette()
    qp.setColor(QPalette.ButtonText, Qt.black) # all ButtonText as black
    qp.setColor(QPalette.Window, Qt.black) # Window background as black
    qp.setColor(QPalette.Button, Qt.gray) # all Button background as black
    app.setPalette(qp)

    # setup the widget
    app_window = MyApp()
    app_window.add_GridLayout()
    app_window.show()

    sys.exit(app.exec_())