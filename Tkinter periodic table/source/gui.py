import tkinter as tk
from .utils import get_colour_by_type

class MainWindow:
    def __init__(self, master, periodic_table):
        self.master = master
        self.master.title("Periodic Table of the Elements")
        self.periodic_table = periodic_table
        self.canvas = tk.Canvas(self.master)#, width=1000, height=800) # width and height of the canvas
        self.canvas.pack()

        # Create a dictionary of buttons
        self.buttons = {}

        # draw the periodic table
        self.draw_periodic_table()

    def draw_periodic_table(self):
        for element in self.periodic_table.elements.values():
            # Create a button for each element
            # TODO: set the size of atomic number much larger compared to rest to resemble the conventional periodic table. 
            button_text = f"{element.symbol}\n{element.atomic_number}\n{element.element}"

            # set button colour based on the element type
            colour = get_colour_by_type(element.type)
            # create button and place it in a grid
            self.buttons[element.atomic_number] = tk.Button(self.canvas,
                                                            text=button_text,
                                                            width=8,
                                                            height=3,
                                                            bg= colour,
                                                            command=lambda e=element: self.on_click(e))
            
            self.buttons[element.atomic_number].grid(row=element.display_row, column=element.display_column)
            
    
    def on_click(self, element):
        """
        Open a toplevel window with the element's name and information.
        We are not using dialog box because it block the main window and we can't compare the details of two or more elements.
        element is an instance of Element class.
        TODO: Write a function to replaces the missing information in the csv file with "unavailable" 
        """
        # Create a toplevel window
        details_window = tk.Toplevel(self.master)
        details_window.title(element.element)
        details_window.geometry("400x400")

        # Show details of the element in a table as a loooong string
        details_text = (
            f"Atomic Number:  {element.atomic_number}\n"
            f"Element:  {element.element}\n"
            f"Symbol:  {element.symbol}\n"
            f"Atomic Weight:  {element.atomic_weight}\n"
            f"Period:  {element.period}\n"
            f"Group:  {element.group}\n"
            f"Phase:  {element.phase}\n"
            f"Most Stable Crystal:  {element.most_stable_crystal}\n"
            f"Type:  {element.type}\n"
            f"Ionic Radius:  {element.ionic_radius}\n"
            f"Atomic Radius:  {element.atomic_radius}\n"
            f"Electronegativity:  {element.electronegativity}\n"
            f"First Ionization Potential:  {element.first_ionization_potential}\n"
            f"Density:  {element.density}\n"
            f"Melting Point (K):  {element.melting_point_kelvin}\n"
            f"Boiling Point (K):  {element.boiling_point_kelvin}\n"
            f"Isotopes:  {element.isotopes}\n"
            f"Discoverer:  {element.discoverer}\n"
            f"Year of Discovery:  {element.year_of_discovery}\n"
            f"Specific Heat Capacity:  {element.specific_heat_capacity}\n"
            f"Electron Configuration:  {element.electron_configuration}\n"
            f"Display Row:  {element.display_row}\n"
            f"Display Column:  {element.display_column}\n"
        )

        # Set the details of the element in the window as label
        details_label = tk.Label(details_window, text=details_text, justify="left", padx=10, pady=10)
        details_label.pack(side="top", fill="both", expand=True)