import pygame
from legal_moves import pawn_moves
from utils import SQUARE_SIZE


class ChessPiece():
    def __init__(self, image_path, colour, position):
        self.image_path = image_path
        self.colour = colour
        self.position = position
        self.image_percentage = 1.0 # percentage of the square size

        self.load_image()

    def load_image(self):
        self.image = pygame.image.load(self.image_path)#.convert_alpha()
        self.image = pygame.transform.scale(self.image, (SQUARE_SIZE * self.image_percentage, SQUARE_SIZE * self.image_percentage))
    
    def draw(self, screen):
        x, y = self.position[1] * SQUARE_SIZE, self.position[0] * SQUARE_SIZE
        screen.blit(self.image, (x, y))

class Pawn(ChessPiece): 
    def __init__(self, image, colour, position):
        super().__init__(image, colour, position)
        self.moves = pawn_moves(colour, position)

class King(ChessPiece): 
    def __init__(self, image, colour, position):
        super().__init__(image, colour, position)
        
class Queen(ChessPiece): pass
class Bishop(ChessPiece): pass
class Knight(ChessPiece): pass
class Rook(ChessPiece): pass