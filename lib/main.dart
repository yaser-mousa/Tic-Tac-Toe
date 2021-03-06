import 'package:flutter/material.dart';
import 'package:tictactoe/screens/choice_game.dart';
import 'package:tictactoe/screens/game_screen.dart';
import 'package:tictactoe/share/style/themedata.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tic Tac Toe',
      theme: themeData,
      home: const ChoiceGame(),
    );
  }
}



