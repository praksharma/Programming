import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QHBoxLayout, QVBoxLayout, QPlainTextEdit
import os  # to run the terminal commands
#from PyQt5.QtCore import Qt

class MyApp(QWidget):
    def __init__(self) -> None:
        super().__init__()
        
        #self.window_width, self.window_height = 1200, 800
        #self.setMinimumSize(self.window_width, self.window_height)
        #self.setWindowTitle('Inbuilt terminal')
        layout = QVBoxLayout()
        self.setLayout(layout)

        self.editorCommand = QPlainTextEdit()
        layout.addWidget(self.editorCommand, 3) # 3 is 30 area in the vertical layout

        self.editorOutput = QPlainTextEdit() 
        layout.addWidget(self.editorOutput, 7) # 7 is 70 area in the vertical layout

        buttonLayout = QHBoxLayout()
        layout.addLayout(buttonLayout) # add horizontal layout inside the vertical layout

        # a pushbutton to run the commands
        self.buttonRun = QPushButton("&Run Command", clicked = self.runCommands) # ampersand makes a shortcut to the next character. you can use alt + R to run this command.
        buttonLayout.addWidget(self.buttonRun) # add button to the horizontal layout inside the vertical layout

        self.buttonClear = QPushButton("&Clear", clicked = lambda: self.editorOutput.clear()) # remember lambda is a one liner function
        buttonLayout.addWidget(self.buttonClear) # add the clear button to the horizontal layout inside the vertical layout
    
    # run command function
    def runCommands(self):
        command = self.editorCommand.toPlainText()
        # pipes the output of a terminal command
        p = os.popen(command)
        if p: # is not empty or True
            self.editorOutput.clear() # clear the editor output plain text
            output = p.read() # store the piped output
            self.editorOutput.insertPlainText(output) # insert the output to the plaintext

if __name__ == "__main__":
    app = QApplication(sys.argv)
    
    w = MyApp()
    w.show()

    sys.exit(app.exec_())

