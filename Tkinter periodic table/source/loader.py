import csv
from .models import Element, PeriodicTable

def load_elements_from_csv(filename, periodic_table):
    with open(filename, 'r', encoding='windows-1252') as file:
        reader = csv.DictReader(file)
        for row in reader:
            element = Element(
                atomic_number=row['Atomic Number'],
                element=row['Element'],
                symbol=row['Symbol'],
                atomic_weight=row['Atomic Weight'],
                period=row['Period'],
                group=row['Group'],
                phase=row['Phase'],
                most_stable_crystal=row['Most Stable Crystal'],
                type=row['Type'],
                ionic_radius=row['Ionic Radius'],
                atomic_radius = row['Atomic Radius'],
                electronegativity = row['Electronegativity'],
                first_ionization_potential = row['First Ionization Potential'],
                density = row['Density'],
                melting_point_kelvin = row['Melting Point (K)'],
                boiling_point_kelvin = row['Boiling Point (K)'],
                isotopes = row['Isotopes'],
                discoverer = row['Discoverer'],
                year_of_discovery = row['Year of Discovery'],
                specific_heat_capacity = row['Specific Heat Capacity'],
                electron_configuration = row['Electron Configuration'],
                display_row = int(row['Display Row']),
                display_column = int(row['Display Column'])
            )
            periodic_table.add_element(element)
        