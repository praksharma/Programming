import sys
from PyQt5.QtWidgets import QApplication, QWidget, QTableView, QMainWindow
from PyQt5.QtCore import Qt, QAbstractTableModel


# We use the QAbstractTableModel which handles the table as the base class of our class
# This creates a table model
class TableModel(QAbstractTableModel):
    def __init__(self, data):
        super().__init__()  # initialise super class
        self._data = data

    # rowcount is an abstract function with notimplemented flag. So the subclass must defined the function
    def rowCount(self, index):
        # The length of the outer list.
        return len(self._data)
    
     # columncount is an abstract function with notimplemented flag. So the subclass must defined the function
    def columnCount(self, index):
        # The following takes the first sub-list, and returns
        # the length (only works if all rows are an equal length)
        return len(self._data[0])
    
    def data(self, index, role):
        if role == Qt.DisplayRole:
            # See below for the nested-list data structure.
            # .row() indexes into the outer list,
            # .column() indexes into the sub-list
            return self._data[index.row()][index.column()] # for pandas use the corresponding syntax to acces the rows and columns


class MainWindow(QMainWindow):
    def __init__(self, data):
        super().__init__()
        self.table = QTableView()
        self.model = TableModel(data) # set the table model
        self.table.setModel(self.model)
        self.setCentralWidget(self.table)


if __name__ == "__main__":
    app = QApplication(sys.argv)
    # A list type data
    data = [
        [4, 9, 2],
        [1, 0, 0],
        [3, 5, 0],
        [3, 3, 2],
        [7, 8, 9],
        ]
    w = MainWindow(data)
    w.show()
    sys.exit(app.exec_())