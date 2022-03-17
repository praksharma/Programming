# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'untitled.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets
import time

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(376, 600)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.output_label = QtWidgets.QLabel(self.centralwidget)
        self.output_label.setGeometry(QtCore.QRect(10, 30, 351, 61))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.output_label.setFont(font)
        self.output_label.setFrameShape(QtWidgets.QFrame.Box)
        self.output_label.setFrameShadow(QtWidgets.QFrame.Plain)
        self.output_label.setTextFormat(QtCore.Qt.AutoText)
        self.output_label.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.output_label.setObjectName("output_label")
        self.percentButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("%"))
        self.percentButton.setGeometry(QtCore.QRect(10, 110, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.percentButton.setFont(font)
        self.percentButton.setObjectName("percentButton")
        self.clearButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("C"))
        self.clearButton.setGeometry(QtCore.QRect(110, 110, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.clearButton.setFont(font)
        self.clearButton.setObjectName("clearButton")
        self.arrowButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.backspace_callback())
        self.arrowButton.setGeometry(QtCore.QRect(200, 110, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.arrowButton.setFont(font)
        self.arrowButton.setObjectName("arrowButton")
        self.divideButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("/"))
        self.divideButton.setGeometry(QtCore.QRect(290, 110, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.divideButton.setFont(font)
        self.divideButton.setObjectName("divideButton")
        self.nineButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("9"))
        self.nineButton.setGeometry(QtCore.QRect(200, 200, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.nineButton.setFont(font)
        self.nineButton.setObjectName("nineButton")
        self.eightButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("8"))
        self.eightButton.setGeometry(QtCore.QRect(110, 200, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.eightButton.setFont(font)
        self.eightButton.setObjectName("eightButton")
        self.multiplyButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("*"))
        self.multiplyButton.setGeometry(QtCore.QRect(290, 200, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.multiplyButton.setFont(font)
        self.multiplyButton.setObjectName("multiplyButton")
        self.sevenButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("7"))
        self.sevenButton.setGeometry(QtCore.QRect(10, 200, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.sevenButton.setFont(font)
        self.sevenButton.setObjectName("sevenButton")
        self.sixButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("6"))
        self.sixButton.setGeometry(QtCore.QRect(200, 290, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.sixButton.setFont(font)
        self.sixButton.setObjectName("sixButton")
        self.fiveButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("5"))
        self.fiveButton.setGeometry(QtCore.QRect(110, 290, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.fiveButton.setFont(font)
        self.fiveButton.setObjectName("fiveButton")
        self.minusButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("-"))
        self.minusButton.setGeometry(QtCore.QRect(290, 290, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.minusButton.setFont(font)
        self.minusButton.setObjectName("minusButton")
        self.fourButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("4"))
        self.fourButton.setGeometry(QtCore.QRect(10, 290, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.fourButton.setFont(font)
        self.fourButton.setObjectName("fourButton")
        self.threeButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("3"))
        self.threeButton.setGeometry(QtCore.QRect(200, 380, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.threeButton.setFont(font)
        self.threeButton.setObjectName("threeButton")
        self.twoButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("2"))
        self.twoButton.setGeometry(QtCore.QRect(110, 380, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.twoButton.setFont(font)
        self.twoButton.setObjectName("twoButton")
        self.plusButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("+"))
        self.plusButton.setGeometry(QtCore.QRect(290, 380, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.plusButton.setFont(font)
        self.plusButton.setObjectName("plusButton")
        self.oneButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("1"))
        self.oneButton.setGeometry(QtCore.QRect(10, 380, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.oneButton.setFont(font)
        self.oneButton.setObjectName("oneButton")
        self.decimalButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.dot_callback())
        self.decimalButton.setGeometry(QtCore.QRect(200, 470, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.decimalButton.setFont(font)
        self.decimalButton.setObjectName("decimalButton")
        self.zeroButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.press_it("0"))
        self.zeroButton.setGeometry(QtCore.QRect(110, 470, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.zeroButton.setFont(font)
        self.zeroButton.setObjectName("zeroButton")
        self.equalButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.equal_callback())
        self.equalButton.setGeometry(QtCore.QRect(290, 470, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.equalButton.setFont(font)
        self.equalButton.setObjectName("equalButton")
        self.plusminusButton = QtWidgets.QPushButton(self.centralwidget, clicked = lambda: self.sign_callback())
        self.plusminusButton.setGeometry(QtCore.QRect(10, 470, 75, 75))
        font = QtGui.QFont()
        font.setPointSize(30)
        self.plusminusButton.setFont(font)
        self.plusminusButton.setObjectName("plusminusButton")
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 376, 22))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)
    
    def backspace_callback(self):
        getText = self.output_label.text()
        self.output_label.setText(getText[:-1])
            
    def sign_callback(self):
        getText = self.output_label.text()
        if getText[0] =="-":
            self.output_label.setText(f"+{getText[1:]}")
        elif getText[0] =="+":
            self.output_label.setText(f"-{getText[1:]}")
        else:
            self.output_label.setText(f"-{getText}")


    def dot_callback(self):
        getText = self.output_label.text()
        if getText[-1]== ".":
            pass
        else:
            self.output_label.setText(f"{getText}.")
            

    def press_it(self,pressed):
        getText = self.output_label.text()
        if pressed == "C":
            self.output_label.setText("0")
        elif getText == "0":
            self.output_label.setText(pressed)
        else:
            self.output_label.setText(f"{getText}{pressed}")
        
    def equal_callback(self):
        getText = self.output_label.text()
        try:
            answer = eval(getText)
            self.output_label.setText(str(answer))
        except SyntaxError:
            self.output_label.setText("Syntax Error")
            

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Calculator"))
        self.output_label.setText(_translate("MainWindow", "0"))
        self.percentButton.setText(_translate("MainWindow", "%"))
        self.clearButton.setText(_translate("MainWindow", "C"))
        self.arrowButton.setText(_translate("MainWindow", "<<"))
        self.divideButton.setText(_translate("MainWindow", "/"))
        self.nineButton.setText(_translate("MainWindow", "9"))
        self.eightButton.setText(_translate("MainWindow", "8"))
        self.multiplyButton.setText(_translate("MainWindow", "X"))
        self.sevenButton.setText(_translate("MainWindow", "7"))
        self.sixButton.setText(_translate("MainWindow", "6"))
        self.fiveButton.setText(_translate("MainWindow", "5"))
        self.minusButton.setText(_translate("MainWindow", "-"))
        self.fourButton.setText(_translate("MainWindow", "4"))
        self.threeButton.setText(_translate("MainWindow", "3"))
        self.twoButton.setText(_translate("MainWindow", "2"))
        self.plusButton.setText(_translate("MainWindow", "+"))
        self.oneButton.setText(_translate("MainWindow", "1"))
        self.decimalButton.setText(_translate("MainWindow", "."))
        self.zeroButton.setText(_translate("MainWindow", "0"))
        self.equalButton.setText(_translate("MainWindow", "="))
        self.plusminusButton.setText(_translate("MainWindow", "+/-"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

