import 'dart:math';

class TicTacToeLogic {
  List<String> board = List.filled(9, '');
  bool gameOver = false;
  List<String> modes = ['Easy', 'Normal', 'Hard', 'Very Hard'];
  String? mode;

  void resetBoard() {
    board = List.filled(9, '');
    gameOver = false;
  }

  void makeMove(int index, String player) {
    board[index] = player;
  }

  bool isMoveValid(int index) {
    return board[index] == '';
  }

  bool checkForWinner(String player) {
    const List<List<int>> winningPositions = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var positions in winningPositions) {
      if (board[positions[0]] == player &&
          board[positions[1]] == player &&
          board[positions[2]] == player) {
        return true;
      }
    }
    return false;
  }

  bool isBoardFull() {
    return !board.contains('');
  }

  void easyComputerMove() {
    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        board[i] = 'O';
        return;
      }
    }
  }

  void normalComputerMove() {
    // Check for winning move
    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        String original = board[i];
        board[i] = 'O';
        if (checkForWinner('O')) {
          return;
        } else {
          board[i] = original;
        }
      }
    }

    // Check for player's winning move to block
    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        String original = board[i];
        board[i] = 'X';
        if (checkForWinner('X')) {
          board[i] = 'O';
          return;
        } else {
          board[i] = original;
        }
      }
    }

    // If no winning moves, choose a random spot
    List<int> emptySpots = [];
    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        emptySpots.add(i);
      }
    }
    Random random = Random();
    int randomIndex = random.nextInt(emptySpots.length);
    board[emptySpots[randomIndex]] = 'O';
  }

  void hardComputerMove() {
    int bestMove = -1;
    int bestScore = -1000;

    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        String original = board[i];
        board[i] = 'O';
        int moveScore = minimax(false);
        board[i] = original;

        if (moveScore > bestScore) {
          bestScore = moveScore;
          bestMove = i;
        }
      }
    }

    board[bestMove] = 'O';
  }

  void veryHardComputerMove() {
    int bestMove = -1;
    int bestScore = -1000;

    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        String original = board[i];
        board[i] = 'O';
        int moveScore = minimaxVeryHard(false, 0);
        board[i] = original;

        if (moveScore > bestScore) {
          bestScore = moveScore;
          bestMove = i;
        }
      }
    }

    board[bestMove] = 'O';
  }

  int minimax(bool isMax) {
    if (checkForWinner('O')) return 10;
    if (checkForWinner('X')) return -10;
    if (isBoardFull()) return 0;

    int bestScore = isMax ? -1000 : 1000;

    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        String original = board[i];
        board[i] = isMax ? 'O' : 'X';
        int score = minimax(!isMax);
        board[i] = original;

        if (isMax) {
          bestScore = max(bestScore, score);
        } else {
          bestScore = min(bestScore, score);
        }
      }
    }
    return bestScore;
  }

  int minimaxVeryHard(bool isMax, int depth) {
    if (checkForWinner('O')) return 10 - depth;
    if (checkForWinner('X')) return depth - 10;
    if (isBoardFull()) return 0;

    int bestScore = isMax ? -1000 : 1000;

    for (int i = 0; i < 9; i++) {
      if (board[i] == '') {
        String original = board[i];
        board[i] = isMax ? 'O' : 'X';
        int score = minimaxVeryHard(!isMax, depth + 1);
        board[i] = original;

        if (isMax) {
          bestScore = max(bestScore, score);
        } else {
          bestScore = min(bestScore, score);
        }
      }
    }
    return bestScore;
  }
}
