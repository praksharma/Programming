import pygame
from utils import SCREEN_WIDTH, SCREEN_HEIGHT, SQUARE_SIZE, WHITE, GREEN
from utils import load_image

# importing pieces
from pieces import Pawn

# intialise pygame
pygame.init()


class ChessBoard:
    def __init__(self):
        # Set up the display
        print("DEBUG: Setting up display")
        self.screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
        pygame.display.set_caption("Chess")

        # Load images dict
        print("DEBUG: Loading images")
        self.images_dict = load_image()

        # set up the initial location of pieces
        print("DEBUG: Setting up initial piece location")
        self.initial_piece_location()

    def draw_board(self):
        self.screen.fill(WHITE)
        # Loop over each square
        for row in range(8):
            for col in range(8):
                # if row + col is even, then colour the square green
                if (row + col) % 2 == 0:
                    colour = WHITE
                else:
                    colour = GREEN
                pygame.draw.rect(self.screen, colour, pygame.Rect(col * SQUARE_SIZE, row * SQUARE_SIZE, SQUARE_SIZE, SQUARE_SIZE))
        

        self.draw_all_pieces()
        pygame.display.update()
    
    def initial_piece_location(self):
        # let us only initialise the pawn for now
        self.pieces = []
        for col in range(8):
            self.pieces.append(Pawn(self.images_dict["white_pawn"],
                               "white", (6, col)))
            self.pieces.append(Pawn(self.images_dict["black_pawn"],
                               "black", (1, col)))
        print(f"DEBUG: Initial pieces: {[(p.colour, p.position) for p in self.pieces]}")
    
    def draw_all_pieces(self):
        for piece in self.pieces:
            piece.draw(self.screen)
        



def main():
    # Load the chess board
    chessboard = ChessBoard()
    running = True

    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
        chessboard.draw_board()       
    pygame.quit()


if __name__ == "__main__":
    main()