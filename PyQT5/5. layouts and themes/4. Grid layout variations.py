import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QGridLayout

# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.setWindowTitle("Demo") # window title

    def add_GridLayout(self):
        grid = QGridLayout(self)

        count = 0
        for i in range(3):
            for j in range(3):
                count= count +1
                grid.addWidget(QPushButton(f"Button {count}"), i, j)

        grid.addWidget(QPushButton(f"Button {count+1}"),3, 0, 1, 0) # Somehow this spans the PushButton to the entire column

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_GridLayout()
    app_window.show()

    sys.exit(app.exec_())