// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tic_tac_toe/logoScreens/iconWidgets.dart';
import 'package:tic_tac_toe/menuScreens.dart/mainMenuScreen.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  _LogoScreenState createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  final IconClass _iconClass = IconClass();

    @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainMenuScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
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
              Center(
                child: _iconClass.completeIcon(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
