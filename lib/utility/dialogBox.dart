import 'package:flutter/material.dart';
import 'package:tic_tac_toe/GridForPlay/logicFile.dart';
import 'package:tic_tac_toe/logoScreens/iconWidgets.dart';
import 'package:tic_tac_toe/menuScreens.dart/mainMenuScreen.dart';

class ShowDialogBox {
  final Icon2Class _iconClass = Icon2Class();
  final TicTacToeLogic gameLogic = TicTacToeLogic();

  void showWinner(
      BuildContext context, String winner, Function resetGameCallback) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          contentPadding: const EdgeInsets.all(0),
          content: Container(
            alignment: Alignment.center,
            height: 320,
            width: 330,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.yellowAccent, width: 4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Center(
                      child: _iconClass
                          .completeIcon()), 
                ),
                Text(
                  winner == "Draw" ? "It's a Draw" : "$winner wins!",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainMenuScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border:
                              Border.all(color: Colors.yellowAccent, width: 3),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Text(
                          "Go To Menu",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 25),
                    InkWell(
                      onTap: () {
                        resetGameCallback();
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border:
                              Border.all(color: Colors.yellowAccent, width: 3),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Text(
                          "Try Again!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                winner == "You"
                    ? InkWell(
                        onTap: () {
                          resetGameCallback();
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          margin:
                              const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 90, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                                color: Colors.yellowAccent, width: 3),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: const Text(
                            "Play Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        );
      },
    );
  }

  void askForGotoMenu(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          contentPadding: const EdgeInsets.all(0),
          content: Container(
            alignment: Alignment.center,
            height: 280,
            width: 330,
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.yellowAccent, width: 4),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: Center(
                      child: _iconClass
                          .completeIcon()), // Assuming this is how you show your icon
                ),
                const Text(
                  "Are You Sure You Want To Quite Game?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border:
                              Border.all(color: Colors.yellowAccent, width: 3),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Text(
                          "No",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainMenuScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 7),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border:
                              Border.all(color: Colors.yellowAccent, width: 3),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Text(
                          "Yes",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
