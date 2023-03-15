import sys
from PyQt5.QtWidgets import QApplication, QWidget, QScrollBar

# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo") # window title

    def add_scrollbar(self):
        scroll = QScrollBar(self)
        scroll.setGeometry(300-30,30,30,300-30)
        scroll.valueChanged.connect(lambda: print(f"Scroll value : {scroll.value()}"))  # print current value if scrollbar is moved


if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_scrollbar()
    app_window.show()

    sys.exit(app.exec_())