type_colour = {
        'Nonmetal': '#FFD700',  # Gold
        'Noble Gas': '#FF6347',  # Tomato
        'Alkali Metal': '#4682B4',  # Steel Blue
        'Alkaline Earth Metal': '#32CD32',  # Lime Green
        'Metalloid': '#DA70D6',  # Orchid
        'Halogen': '#FF4500',  # Orange Red
        'Metal': '#B0C4DE',  # Light Steel Blue
        'Transition Metal': '#DAA520',  # Goldenrod
        'Lanthanide': '#800080',  # Purple
        'Actinide': '#808080',  # Grey
        'Transactinide': '#00CED1',  # Dark Turquoise
        'NaN': '#808080'  # Default Grey for undefined types
    }

def get_colour_by_type(element_type):
    return type_colour.get(element_type, '#808080') # Default is gray