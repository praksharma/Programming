from source import *
import tkinter as tk

def main():
    root = tk.Tk()
    pt = PeriodicTable()
    # load data from the periodic table and add it to the periodic table
    # the entire data is store in pt and then this pt object is sent to the GUI frontend for drawing
    load_elements_from_csv('data.csv', pt)
    app = MainWindow(root, pt)
    root.mainloop()

if __name__ == '__main__':
    main()  