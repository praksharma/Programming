import sys
from PyQt5.QtWidgets import QApplication, QWidget, QTabWidget



# There are two types of menu items: Strings and QAction



# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo") # window title

    def add_tabs(self):
        tab = QTabWidget(self)

        tab1 = QWidget(self)
        tab.addTab(tab1, "Tab 1")

        tab2 = QWidget(self)
        tab.addTab(tab2, "Tab 2")

        tab3 = QWidget(self)
        tab.addTab(tab3, "Tab 3")

        tab4 = QWidget(self)
        tab.addTab(tab4, "Tab 4")

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_tabs()
    app_window.show()
    sys.exit(app.exec_())