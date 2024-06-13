import pygame
from abc import ABC, abstractmethod

# Initialize Pygame
pygame.init()

# Constants
SCREEN_WIDTH, SCREEN_HEIGHT = 800, 800
SQUARE_SIZE = SCREEN_WIDTH // 8

# Colors
WHITE = (255, 255, 255)
BLACK = (0, 255, 0)
PAWN_COLOR = (200, 0, 0)  # Color for the pawn

class ChessBoard:
    def __init__(self):
        self.screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
        pygame.display.set_caption('Chess Board')
        self.selected_piece = None

    def draw_board(self):
        self.screen.fill(WHITE)
        for row in range(8):
            for col in range(8):
                color = WHITE if (row + col) % 2 == 0 else BLACK
                pygame.draw.rect(self.screen, color, pygame.Rect(col * SQUARE_SIZE, row * SQUARE_SIZE, SQUARE_SIZE, SQUARE_SIZE))

    def draw_piece(self, piece):
        row, col = piece.position
        piece_rect = pygame.Rect(col * SQUARE_SIZE + SQUARE_SIZE // 4, row * SQUARE_SIZE + SQUARE_SIZE // 4, SQUARE_SIZE // 2, SQUARE_SIZE // 2)
        pygame.draw.rect(self.screen, PAWN_COLOR, piece_rect)

    def select_piece(self, position):
        row, col = position
        if self.selected_piece and self.selected_piece.position == (row, col):
            self.selected_piece = None
        elif isinstance(self.selected_piece, ChessPiece):
            if position in self.selected_piece.legal_moves(self):
                self.selected_piece.position = position
                self.selected_piece = None
        else:
            if self.selected_piece is None:
                self.selected_piece = position

class ChessPiece(ABC):
    def __init__(self, color, position):
        self.color = color
        self.position = position

    @abstractmethod
    def legal_moves(self, board):
        pass

# Example of a concrete piece class
class Pawn(ChessPiece):
    def legal_moves(self, board):
        moves = []
        direction = -1 if self.color == 'white' else 1
        start_row = 6 if self.color == 'white' else 1
        row, col = self.position

        if 0 <= row + direction < 8:
            moves.append((row + direction, col))
        if row == start_row and 0 <= row + 2 * direction < 8:
            moves.append((row + 2 * direction, col))

        return moves

def main():
    board = ChessBoard()
    pawn = Pawn('white', (6, 4))  # Example position of a white pawn
    running = True
    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
            elif event.type == pygame.MOUSEBUTTONDOWN:
                mouse_pos = pygame.mouse.get_pos()
                clicked_row = mouse_pos[1] // SQUARE_SIZE
                clicked_col = mouse_pos[0] // SQUARE_SIZE
                if board.selected_piece is None and (clicked_row, clicked_col) == pawn.position:
                    board.selected_piece = pawn
                elif board.selected_piece == pawn:
                    if (clicked_row, clicked_col) in pawn.legal_moves(board):
                        pawn.position = (clicked_row, clicked_col)
                        board.selected_piece = None
        board.draw_board()
        board.draw_piece(pawn)
        pygame.display.flip()
    pygame.quit()

if __name__ == "__main__":
    main()
