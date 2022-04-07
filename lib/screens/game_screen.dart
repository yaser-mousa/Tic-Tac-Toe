import 'package:flutter/material.dart';

import '../models/game_values.dart';
import '../share/style/themedata.dart';
import '../widgets/body_widget.dart';
import 'choice_game.dart';

class GameScreen extends StatefulWidget {
   const GameScreen({Key? key,}) : super(key: key);



  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: backGroundColorScaffold(),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: BodyWidget()),
      ),

    );
  }
}
