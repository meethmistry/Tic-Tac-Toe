// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/GridForPlay/boardScreen.dart';
import 'package:tic_tac_toe/logoScreens/iconWidgets.dart';

class MainMenuScreen extends StatelessWidget {
  MainMenuScreen({super.key});
  IconClass _iconClass = IconClass();

  void navigateToGameScreen(BuildContext context, String mode) {
    // Add your navigation logic here
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            Boardscreen(mode: mode), // Replace with your game screen widget
      ),
    );
  }

  Widget buildModeButton(BuildContext context, String mode) {
    return InkWell(
      onTap: () => navigateToGameScreen(context, mode),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 2, 27, 95),
              Color.fromARGB(255, 6, 32, 105),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 26, 72, 198),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 6, 32, 105),
              Color.fromARGB(255, 2, 27, 95),
              Color.fromARGB(255, 6, 32, 105),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 26, 72, 198),
              Color.fromARGB(255, 16, 51, 147),
              Color.fromARGB(255, 6, 32, 105),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.yellowAccent, width: 2),
          boxShadow: [
            const BoxShadow(
              color: Colors.black45,
              offset: Offset(0, 6),
              blurRadius: 8,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Text(
            mode,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
              shadows: [
                Shadow(
                  color: Colors.black38,
                  offset: Offset(1, 1),
                  blurRadius: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: _iconClass.completeIcon()),
              const SizedBox(height: 50),
              buildModeButton(context, 'Easy'),
              buildModeButton(context, 'Normal'),
              buildModeButton(context, 'Hard'),
              buildModeButton(context, 'Very Hard'),
            ],
          ),
        ),
      ),
    );
  }
}
