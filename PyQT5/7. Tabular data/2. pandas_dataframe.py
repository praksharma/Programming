import sys
import pandas as pd
from PyQt5.QtWidgets import QApplication, QTableView, QMainWindow
from PyQt5.QtCore import QAbstractTableModel, Qt

df = pd.DataFrame({'a' : ['hell', 'dell', 'lenovo'],
                   'b' : [1, 2, 3],
                   'c' : ['a', 'b', 'c']})

#print(df)

class pandasModel(QAbstractTableModel):
    def __init__(self, data):
        super().__init__()
        self._data = data

    # The rowCount and columnCount functions are abstract in the super(), so it must be overridden.
    def rowCount(self, parent=None):
        return self._data.shape[0]
    
    def columnCount(self, parent=None):
        return self._data.shape[1]
    
    # This function is also abstract to the super() so must be defined
    # It loops over the dataframe
    def data(self, index, role=Qt.DisplayRole):
        if index.isValid():
            if role == Qt.DisplayRole:
                return str(self._data.iloc[index.row(), index.column()])
        return None

    # This function is also abstract to the super() so must be defined
    # This puts the header in the widget
    def headerData(self, col, orientation, role):
        if orientation == Qt.Horizontal and role == Qt.DisplayRole:
            return self._data.columns[col]
        return None
    
class MainWindow(QMainWindow):
    def __init__(self, data):
        super().__init__()
        self.table = QTableView()
        self.model = pandasModel(data) # set the table model
        self.table.setModel(self.model)
        self.setCentralWidget(self.table)

if __name__ == '__main__':
    app = QApplication(sys.argv)
    model = MainWindow(df)
    # view = QTableView()
    # view.setModel(model)
    # view.resize(800, 600)
    model.show()

    sys.exit(app.exec_())
