import 'package:flutter/material.dart';
import 'package:tic_tac_toe/GridForPlay/logicFile.dart';
import 'package:tic_tac_toe/utility/dialogBox.dart';

class Boardscreen extends StatefulWidget {
  final String mode;

  const Boardscreen({Key? key, required this.mode}) : super(key: key);

  @override
  State<Boardscreen> createState() => _PlayWithComputerBoardState();
}

class _PlayWithComputerBoardState extends State<Boardscreen> {
  final TicTacToeLogic gameLogic = TicTacToeLogic();
  final ShowDialogBox dialogBox = ShowDialogBox();

  @override
  void initState() {
    super.initState();
    gameLogic.mode = widget.mode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 4, 40, 139),
              Color.fromARGB(255, 16, 51, 147),
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 220,
              width: MediaQuery.of(context).size.width - 25,
              margin: const EdgeInsets.only(top: 25, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      border: Border.all(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.close,
                          color: Colors.redAccent,
                          size: 85,
                          shadows: [
                            Shadow(
                              color: Colors.red,
                              blurRadius: 10,
                            )
                          ],
                        ),
                        Text(
                          "You",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "VS",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      border: Border.all(color: Colors.greenAccent, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.greenAccent,
                          size: 80,
                          shadows: [
                            Shadow(
                              color: Colors.green,
                              blurRadius: 10,
                            )
                          ],
                        ),
                        Text(
                          "Computer",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                ),
                itemCount: 9,
                padding: const EdgeInsets.all(10.0),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onTileTap(index),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black38,
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                                color: gameLogic.board[index] == 'X'
                                    ? Colors.red
                                    : gameLogic.board[index] == 'O'
                                        ? Colors.green
                                        : Colors.black38,
                                blurRadius: 100,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.inner),
                          ],
                          border: Border.all(
                              color: gameLogic.board[index] == 'X'
                                  ? Colors.redAccent
                                  : gameLogic.board[index] == 'O'
                                      ? Colors.greenAccent
                                      : Colors.transparent,
                              width: 3)),
                      child: Center(
                        child: gameLogic.board[index] == 'X'
                            ? const Icon(
                                Icons.close,
                                color: Colors.redAccent,
                                size: 85,
                                shadows: [
                                  Shadow(
                                    color: Colors.red,
                                    blurRadius: 25,
                                  )
                                ],
                              )
                            : gameLogic.board[index] == 'O'
                                ? const Icon(
                                    Icons.circle_outlined,
                                    color: Colors.greenAccent,
                                    size: 80,
                                    shadows: [
                                      Shadow(
                                        color: Colors.green,
                                        blurRadius: 25,
                                      )
                                    ],
                                  )
                                : null,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 25,
              margin: const EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 2, 27, 95),
                    Color.fromARGB(255, 6, 32, 105),
                    Color.fromARGB(255, 16, 51, 147),
                    Color.fromARGB(255, 26, 72, 198),
                    Color.fromARGB(255, 16, 51, 147),
                    Color.fromARGB(255, 6, 32, 105),
                    Color.fromARGB(255, 2, 27, 95),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      dialogBox.askForGotoMenu(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 120,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 2, 27, 95),
                            Color.fromARGB(255, 6, 32, 105),
                            Color.fromARGB(255, 16, 51, 147),
                            Color.fromARGB(255, 26, 72, 198),
                            Color.fromARGB(255, 16, 51, 147),
                            Color.fromARGB(255, 6, 32, 105),
                            Color.fromARGB(255, 2, 27, 95),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.yellowAccent, width: 2),
                      ),
                      child: const Text(
                        "Back",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  InkWell(
                    onTap: () {
                      setState(() {
                        gameLogic.resetBoard();
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 120,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 2, 27, 95),
                            Color.fromARGB(255, 6, 32, 105),
                            Color.fromARGB(255, 16, 51, 147),
                            Color.fromARGB(255, 26, 72, 198),
                            Color.fromARGB(255, 16, 51, 147),
                            Color.fromARGB(255, 6, 32, 105),
                            Color.fromARGB(255, 2, 27, 95),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.yellowAccent, width: 2),
                      ),
                      child: const Text(
                        "Reset",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTileTap(int index) {
    if (gameLogic.board[index] == '' && !gameLogic.gameOver) {
      setState(() {
        gameLogic.board[index] = 'X';
      });
      _checkWinner();
      if (!gameLogic.gameOver) {
        Future.delayed(Duration(milliseconds: 500), () {
          if (gameLogic.mode == 'Easy') {
            gameLogic.easyComputerMove();
          } else if (gameLogic.mode == 'Normal') {
            gameLogic.normalComputerMove();
          } else if (gameLogic.mode == 'Hard') {
            gameLogic.hardComputerMove();
          } else if (gameLogic.mode == 'Very Hard') {
            gameLogic.veryHardComputerMove();
          }
          setState(() {}); // Refresh the UI after the computer move
          _checkWinner();
        });
      }
    }
  }

  void _checkWinner() {
    if (gameLogic.checkForWinner('X')) {
      _isGameOver();
      dialogBox.showWinner(context, "You", _resetGame);
    } else if (gameLogic.checkForWinner('O')) {
      _isGameOver();
      dialogBox.showWinner(context, "Computer", _resetGame);
    } else if (gameLogic.isBoardFull()) {
      _isGameOver();
      dialogBox.showWinner(context, "Draw", _resetGame);
    }
  }

  void _isGameOver() {
    setState(() {
      gameLogic.gameOver = true;
    });
  }

  void _resetGame() {
    setState(() {
      gameLogic.resetBoard();
    });
  }
}
