# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file './layout.ui'
#
# Created by: PyQt5 UI code generator 5.9.2
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(818, 619)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout.setObjectName("gridLayout")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 1, 0, 1, 1)
        self.breadthText = QtWidgets.QPlainTextEdit(self.centralwidget)
        self.breadthText.setMaximumSize(QtCore.QSize(500, 25))
        self.breadthText.setObjectName("breadthText")
        self.gridLayout.addWidget(self.breadthText, 2, 2, 1, 1)
        self.label_7 = QtWidgets.QLabel(self.centralwidget)
        self.label_7.setMaximumSize(QtCore.QSize(16777215, 25))
        self.label_7.setTextFormat(QtCore.Qt.RichText)
        self.label_7.setObjectName("label_7")
        self.gridLayout.addWidget(self.label_7, 12, 0, 1, 1)
        self.lengthText = QtWidgets.QPlainTextEdit(self.centralwidget)
        self.lengthText.setMaximumSize(QtCore.QSize(500, 25))
        self.lengthText.setObjectName("lengthText")
        self.gridLayout.addWidget(self.lengthText, 1, 2, 1, 1)
        self.solveButton = QtWidgets.QPushButton(self.centralwidget)#, clicked = lambda: self.solver_function()) # solve button
        self.solveButton.setMaximumSize(QtCore.QSize(100, 16777215))
        self.solveButton.setObjectName("solveButton")
        self.gridLayout.addWidget(self.solveButton, 10, 0, 1, 1)
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setMaximumSize(QtCore.QSize(16777215, 25))
        self.label_3.setObjectName("label_3")
        self.gridLayout.addWidget(self.label_3, 2, 0, 1, 1)
        self.heightText = QtWidgets.QPlainTextEdit(self.centralwidget)
        self.heightText.setMaximumSize(QtCore.QSize(500, 25))
        self.heightText.setObjectName("heightText")
        self.gridLayout.addWidget(self.heightText, 4, 2, 1, 1)
        self.label_4 = QtWidgets.QLabel(self.centralwidget)
        self.label_4.setMaximumSize(QtCore.QSize(16777215, 25))
        self.label_4.setObjectName("label_4")
        self.gridLayout.addWidget(self.label_4, 4, 0, 1, 1)
        self.label_5 = QtWidgets.QLabel(self.centralwidget)
        self.label_5.setMaximumSize(QtCore.QSize(16777215, 25))
        self.label_5.setTextFormat(QtCore.Qt.RichText)
        self.label_5.setObjectName("label_5")
        self.gridLayout.addWidget(self.label_5, 6, 0, 1, 1)
        self.elasticityText = QtWidgets.QPlainTextEdit(self.centralwidget)
        self.elasticityText.setMaximumSize(QtCore.QSize(500, 25))
        self.elasticityText.setObjectName("elasticityText")
        self.gridLayout.addWidget(self.elasticityText, 6, 2, 1, 1)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setMaximumSize(QtCore.QSize(800, 292))
        self.label_2.setText("")
        self.label_2.setTextFormat(QtCore.Qt.RichText)
        self.label_2.setPixmap(QtGui.QPixmap("snip.png"))
        self.label_2.setScaledContents(True)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 0, 0, 1, 3, QtCore.Qt.AlignHCenter)
        self.loadText = QtWidgets.QPlainTextEdit(self.centralwidget)
        self.loadText.setMaximumSize(QtCore.QSize(500, 25))
        self.loadText.setObjectName("loadText")
        self.gridLayout.addWidget(self.loadText, 8, 2, 1, 1)
        self.label_8 = QtWidgets.QLabel(self.centralwidget)
        self.label_8.setMaximumSize(QtCore.QSize(16777215, 25))
        self.label_8.setTextFormat(QtCore.Qt.RichText)
        self.label_8.setObjectName("label_8")
        self.gridLayout.addWidget(self.label_8, 13, 0, 1, 1)
        self.label_6 = QtWidgets.QLabel(self.centralwidget)
        self.label_6.setMaximumSize(QtCore.QSize(16777215, 25))
        self.label_6.setTextFormat(QtCore.Qt.RichText)
        self.label_6.setObjectName("label_6")
        self.gridLayout.addWidget(self.label_6, 8, 0, 1, 1)
        self.statusText = QtWidgets.QLabel(self.centralwidget)
        self.statusText.setTextFormat(QtCore.Qt.PlainText)
        self.statusText.setObjectName("statusText")
        self.gridLayout.addWidget(self.statusText, 10, 2, 1, 1)
        self.slopeText = QtWidgets.QLabel(self.centralwidget)
        self.slopeText.setObjectName("slopeText")
        self.gridLayout.addWidget(self.slopeText, 12, 2, 1, 1)
        self.deflectionText = QtWidgets.QLabel(self.centralwidget)
        self.deflectionText.setObjectName("deflectionText")
        self.gridLayout.addWidget(self.deflectionText, 13, 2, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 818, 22))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)
        self.toolBar = QtWidgets.QToolBar(MainWindow)
        self.toolBar.setObjectName("toolBar")
        MainWindow.addToolBar(QtCore.Qt.TopToolBarArea, self.toolBar)
        self.toolBar_2 = QtWidgets.QToolBar(MainWindow)
        self.toolBar_2.setObjectName("toolBar_2")
        MainWindow.addToolBar(QtCore.Qt.TopToolBarArea, self.toolBar_2)    


        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)
        self.solveButton.clicked.connect(self.solver_function)  # connecting callbacks
    def solver_function(self):
        try:
            b = float(self.breadthText.toPlainText())  # getText() is only for labels
            d = float(self.heightText.toPlainText())
            L = float(self.lengthText.toPlainText())
            E = float(self.elasticityText.toPlainText())
            P = float(self.loadText.toPlainText())

            try:
                # Adding logic
                I = b*d**3/12
                thetaMax = P*L**2/(2*E*I)
                deflectionMax = P*L**3/(3*E*I)
                self.slopeText.setText(str(thetaMax))
                self.deflectionText.setText(str(deflectionMax))
                self.statusText.setText("See results below...")
            except ZeroDivisionError:
                self.statusText.setText("Hypothetical Parameters...")
                self.slopeText.setText("Division by zero")
                self.deflectionText.setText("Division by zero")
        except ValueError:
            self.statusText.setText("Please Input number only...")
            
        

        
        

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Cantilever Beam"))
        self.label.setText(_translate("MainWindow", "Span of Beam (L) in metre"))
        self.label_7.setText(_translate("MainWindow", "<html><head/><body><p>Slope at free end (&theta;) in radians</p></body></html>"))
        self.solveButton.setText(_translate("MainWindow", "Solve"))
        self.label_3.setText(_translate("MainWindow", "Breadth of Beam (b) in metre"))
        self.label_4.setText(_translate("MainWindow", "Height/ Depth of Beam (d) in metre"))
        self.label_5.setText(_translate("MainWindow", "<html><head/><body><p>Young\'s modulus of the material (E) in kN/mm<span style=\" vertical-align:super;\">2</span></p></body></html>"))
        self.label_8.setText(_translate("MainWindow", "<html><head/><body><p>maximum deflection in metre</p></body></html>"))
        self.label_6.setText(_translate("MainWindow", "Point load (P) in kN"))
        self.statusText.setText(_translate("MainWindow", "Press Solve"))
        self.slopeText.setText(_translate("MainWindow", "0"))
        self.deflectionText.setText(_translate("MainWindow", "0"))
        self.toolBar.setWindowTitle(_translate("MainWindow", "toolBar"))
        self.toolBar_2.setWindowTitle(_translate("MainWindow", "toolBar_2"))


if __name__ == "__main__":
    import sys
    app = QtWidgets.QApplication(sys.argv)
    MainWindow = QtWidgets.QMainWindow()
    ui = Ui_MainWindow()
    ui.setupUi(MainWindow)
    MainWindow.show()
    sys.exit(app.exec_())

