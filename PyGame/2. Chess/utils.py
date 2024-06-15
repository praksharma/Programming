import os

# constants
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 800
SQUARE_SIZE = SCREEN_WIDTH // 8
WHITE = (255, 255, 255)
GREEN = (0, 128, 0)


def load_image():
    pieces = ['king', 'queen', 'bishop', 'knight', 'rook', 'pawn']
    colours = ['white', 'black']
    images_dict = {}

    for colour in colours:
        for piece in pieces:
            images_dict[f"{colour}_{piece}"] = f"assets/{colour}_{piece}.png"
            #images_dict[f"{colour}_{piece}"] = os.path.join(os.getcwd(), f"assets/{colour}_{piece}.png")
    
    print("DEBUG: Images dictionary")
    print(images_dict)

    return images_dict

def get_clicked_square(pos):
    clicked_row = pos[0] // SQUARE_SIZE
    clicked_col = pos[1] // SQUARE_SIZE
    return clicked_col, clicked_row