import pygame
import os

# Constants
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 800
SQUARE_SIZE = SCREEN_WIDTH // 8
WHITE = (255, 255, 255)
GREEN = (0, 128, 0)

# Initialize pygame
pygame.init()

# Set up the display
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("Test Load Image")

# Load image function
def load_image(image_path):
    image = pygame.image.load(image_path).convert_alpha()
    image = pygame.transform.scale(image, (SQUARE_SIZE, SQUARE_SIZE))
    return image

# Load the pawn image
pawn_image_path = os.path.join(os.getcwd(), "assets", "white_pawn.png")
pawn_image = load_image(pawn_image_path)

# Draw the board
def draw_board(screen):
    screen.fill(WHITE)
    for row in range(8):
        for col in range(8):
            colour = WHITE if (row + col) % 2 == 0 else GREEN
            pygame.draw.rect(screen, colour, pygame.Rect(col * SQUARE_SIZE, row * SQUARE_SIZE, SQUARE_SIZE, SQUARE_SIZE))

# Main loop
def main():
    running = True
    while running:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                running = False
        
        draw_board(screen)
        # Draw the pawn image at a specific position
        screen.blit(pawn_image, (4 * SQUARE_SIZE, 4 * SQUARE_SIZE))
        
        pygame.display.update()

    pygame.quit()

if __name__ == "__main__":
    main()
