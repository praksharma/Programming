def pawn_moves(colour, position):
    """
    Calculate legal moves for the pawn
    """
    moves = []
    direction = -1 if colour == 'white' else 1
    start_row = 1 if colour == 'white' else 6 # grant the pawn the ability to move two steps from the start

    row, col = position

    # if the pawn's final position is within the board
    if 0 <= row + direction < 8:
        moves.append((row + direction, col))
    
    # if the pawn is at the starting position, it can move two steps
    if row == start_row and 0 <= row + 2 * direction < 8:
        moves.append(row + 2 * direction, col)

    return moves

def rook_moves(colour, position):
    """
    Calculate legal moves for the rook
    """
    moves = []
    row, col = position

    # horizontal moves
    pass