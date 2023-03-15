import sys
from PyQt5.QtWidgets import QApplication, QWidget, QMenuBar, QAction

# There are two types of menu items: Strings and QAction



# We use the QWidget as the base class of our class
class MyApp(QWidget):
    def __init__(self):
        super().__init__()  # initialise super class
        self.resize(300,300)
        self.setWindowTitle("Demo") # window title

    def add_MenuBar(self):
        # syntax : QRadioButton(str, parent: QWidget = None)
        MenuBar = QMenuBar(self)
        file_menu = MenuBar.addMenu("File") # add a menu

        # add string submenu
        file_menu.addAction("New")
        
        # Add QAction submenu
        save = QAction("Save", self)
        save.setShortcut("Ctrl+S")
        file_menu.addAction(save)

        # Adding more submenus menus
        edit_menu = file_menu.addMenu("Edit")
        copy = QAction("Copy", self)
        copy.setShortcut("Ctrl+C")
        edit_menu.addAction(copy)
        paste = QAction("Paste", self)
        paste.setShortcut("Ctrl+V")
        edit_menu.addAction(paste)

        # A quit button
        quit = QAction("Quit", self)
        quit.setShortcut("Ctrl+Q")
        file_menu.addAction(quit)

        # Print which button is pressed
        file_menu.triggered[QAction].connect(self.logger)
        
        # Close the program when quit menu is pressed
        quit.triggered.connect(self.close)

        MenuBar.show()
    
    # A basic logger to print which key is pressed
    def logger(self, q):
        print(f"{q.text()} + is pressed")

if __name__ == "__main__":
    app = QApplication(sys.argv)

    app_window = MyApp()
    app_window.add_MenuBar()
    app_window.show()
    sys.exit(app.exec_())