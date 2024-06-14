import pygame

# intialise pygame
pygame.init()

# Constants
SCREEN_WIDTH, SCREEN_HEIGHT = 800, 800
SQUARE_SIZE = SCREEN_WIDTH // 8

# Colours
WHITE = (255, 255, 255)
GREEN = (0, 128, 0)


class CHESSSBOARD:
    def __init__(self):
        self.screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
        pygame.display.set_caption("Chess")

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
        pygame.display.update()




def main():
    chessboard = CHESSSBOARD()
    running = True
    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
        chessboard.draw_board()
    pygame.quit()


if __name__ == "__main__":
    main()