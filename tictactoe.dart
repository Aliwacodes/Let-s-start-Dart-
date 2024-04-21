import 'dart:io';

class TicTacToe {
  // Board representation using a list of strings (empty: ' ', X: 'X', O: 'O')
  List<String> board = List.filled(9, ' ');
  String currentPlayer = 'X';

  // Function to display the current board state
  void displayBoard() {
    print(' ${board[0]} | ${board[1]} | ${board[2]} ');
    print('-----------');
    print(' ${board[3]} | ${board[4]} | ${board[5]} ');
    print('-----------');
    print(' ${board[6]} | ${board[7]} | ${board[8]} ');
  }

  // Function to check if a move is valid (empty space on the board)
  bool isMoveValid(int position) {
    return position >= 0 && position < 9 && board[position] == ' ';
  }

  // Function to check if a player has won (rows, columns, diagonals)
  bool checkWin() {
    // Check rows
    for (int i = 0; i < 3; i++) {
      if (board[i * 3] != ' ' &&
          board[i * 3] == board[i * 3 + 1] &&
          board[i * 3 + 1] == board[i * 3 + 2]) {
        return true;
      }
    }
    // Check columns
    for (int i = 0; i < 3; i++) {
      if (board[i] != ' ' &&
          board[i] == board[i + 3] &&
          board[i + 3] == board[i + 6]) {
        return true;
      }
    }
    // Check diagonals
    if (board[0] != ' ' && board[0] == board[4] && board[4] == board[8]) {
      return true;
    }
    if (board[2] != ' ' && board[2] == board[4] && board[4] == board[6]) {
      return true;
    }
    return false;
  }

  // Function to check if the board is full (no empty spaces)
  bool isBoardFull() {
    return !board.contains(' ');
  }

  // Function to switch players after a turn
  void switchPlayer() {
    currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
  }

  // Function to handle the game loop (prompts, input validation, win/draw checks)
  void playGame() {
    print('Welcome to Tic Tac Toe!');
    print('Player 1: X, Player 2: O');

    while (true) {
      displayBoard();
      print('Player $currentPlayer\'s turn. Enter a position (0-8):');

      int position = int.parse(stdin.readLineSync()!);

      if (!isMoveValid(position)) {
        print('Invalid move. Please try again.');
        continue; // Skip to the next iteration of the loop
      }

      board[position] = currentPlayer;

      if (checkWin()) {
        displayBoard();
        print('Player $currentPlayer wins!');
        break;
      } else if (isBoardFull()) {
        displayBoard();
        print('It\'s a draw!');
        break;
      }

      switchPlayer();
    }
  }
}

void main() {
  TicTacToe ticTacToe = TicTacToe();
  ticTacToe.playGame();
}
