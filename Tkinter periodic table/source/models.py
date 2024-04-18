class Element():
    def __init__(self, 
                 atomic_number,
                 element,
                 symbol,
                 atomic_weight,
                 period,
                 group,
                 phase,
                 most_stable_crystal,
                 type,
                 ionic_radius,
                 atomic_radius,
                 electronegativity,
                 first_ionization_potential,
                 density,
                 melting_point_kelvin,
                 boiling_point_kelvin,
                 isotopes,
                 discoverer,
                 year_of_discovery,
                 specific_heat_capacity,
                 electron_configuration,
                 display_row,
                 display_column
                ):
        """
        Property of an element.
        TODO: use data types for numbers and strings separately.
        """
        self.atomic_number = atomic_number
        self.element = element
        self.symbol = symbol
        self.atomic_weight = atomic_weight
        self.period = period
        self.group = group
        self.phase = phase
        self.most_stable_crystal = most_stable_crystal
        self.type = type
        self.ionic_radius = ionic_radius
        self.atomic_radius = atomic_radius
        self.electronegativity = electronegativity
        self.first_ionization_potential = first_ionization_potential
        self.density = density
        self.melting_point_kelvin = melting_point_kelvin
        self.boiling_point_kelvin = boiling_point_kelvin
        self.isotopes = isotopes
        self.discoverer = discoverer
        self.year_of_discovery = year_of_discovery
        self.specific_heat_capacity = specific_heat_capacity
        self.electron_configuration = electron_configuration
        self.display_row = display_row
        self.display_column = display_column
        
class PeriodicTable():
    """
    This is a class is for future implimentation. We can add features to search for elements based on their properties.
    For now we will only use add_element()
    """
    def __init__(self):
        self.elements = {} # list can also be used
    
    def add_element(self, element):
        """
        Add an element to the periodic table.
        """
        self.elements[element.atomic_number] = element # element is an instance of Element class

    def get_element_by_atomic_number(self, atomic_number):
        """
        Identify an element based on its atomic number.
        """
        return self.elements[atomic_number]
