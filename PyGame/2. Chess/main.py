import pygame
from utils import SCREEN_WIDTH, SCREEN_HEIGHT, SQUARE_SIZE, WHITE, GREEN
from utils import load_image, get_clicked_square

# importing pieces
from pieces import Pawn, King, Queen, Bishop, Knight, Rook

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

        # Initialize the board state
        # dictionary used to keep track of the pieces on the board
        # key is a tuple representing the position on the board (row, col)
        # value is the ChessPiece object occupying that position
        self.board_state = {}

        # set up the initial location of pieces
        print("DEBUG: Setting up initial piece location")
        self.initial_piece_location()

        #print(self.board_state)

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
        
        # draw all pieces
        self.draw_all_pieces()

        # update the display in the end
        pygame.display.update()

    def initial_piece_location(self):
        # list of all pieces
        self.pieces = []

        # Function to add a piece to the board and board_state (not accessible outside the method)
        def add_piece(piece_class, image_key, colour, position):
            """
            piece_class: class of the piece
            image_key: key in the images_dict
            colour: colour of the piece
            position: position of the piece on the board
            """
            piece = piece_class(self.images_dict[image_key], colour, position)
            self.pieces.append(piece)
            self.board_state[position] = piece

        # draw pawns
        for col in range(8):
            add_piece(Pawn, "white_pawn", "white", (6, col))
            add_piece(Pawn, "black_pawn", "black", (1, col))
        # print(f"DEBUG: Initial pieces: {[(p.colour, p.position) for p in self.pieces]}")

        # Add kings
        add_piece(King, "white_king", "white", (7, 4))
        add_piece(King, "black_king", "black", (0, 4))
        
        # Add queens
        add_piece(Queen, "white_queen", "white", (7, 3))
        add_piece(Queen, "black_queen", "black", (0, 3))
        
        # Add bishops
        for i in [2, 5]:
            add_piece(Bishop, "white_bishop", "white", (7, i))
            add_piece(Bishop, "black_bishop", "black", (0, i))
        
        # Add knights
        for i in [1, 6]:
            add_piece(Knight, "white_knight", "white", (7, i))
            add_piece(Knight, "black_knight", "black", (0, i))
        
        # Add rooks
        for i in [0, 7]:
            add_piece(Rook, "white_rook", "white", (7, i))
            add_piece(Rook, "black_rook", "black", (0, i))
        
    def draw_all_pieces(self):
        for piece in self.pieces:
            piece.draw(self.screen)
        



def main():
    # Load the chess board
    chessboard = ChessBoard()
    running = True
    
    # Main loop
    while running:
        for event in pygame.event.get():
            # if the user clicks the close button, quit the game
            if event.type == pygame.QUIT:
                running = False
            elif event.type == pygame.MOUSEBUTTONDOWN:
                mousepos = pygame.mouse.get_pos()
                clicked_row, clicked_col = get_clicked_square(mousepos)
                print(f"DEBUG: Mouse click at {clicked_row, clicked_col}")
                # (clicked_row, clicked_col): This tuple is the key
                # If there is no entry for this key (i.e., the square is empty), it returns the string 'Empty'.
                piece = chessboard.board_state.get((clicked_row, clicked_col))
                if piece:
                    piece_name = piece.__class__.__name__ # name of the class of the piece
                else:
                    piece_name = 'Unoccupied'
                print(f"DEBUG: Mouse click at {clicked_row, clicked_col}")
                print(f"DEBUG: Board state at {clicked_row, clicked_col}: {piece_name}")
                
                # list of all pieces on the board state
                # for position in chessboard.board_state.keys():
                #         print(position, chessboard.board_state[position].__class__.__name__)

        chessboard.draw_board()       
    pygame.quit()


if __name__ == "__main__":
    main()