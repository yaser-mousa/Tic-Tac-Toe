import 'package:flutter/material.dart';
import 'package:tictactoe/screens/game_screen.dart';
import 'package:tictactoe/widgets/body_widget.dart';

import '../models/game_values.dart';
import '../share/style/themedata.dart';

class ChoiceGame extends StatelessWidget {
  const ChoiceGame({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   double  _width =MediaQuery.of(context).size.width;
    return Container(
      decoration: backGroundColorScaffold(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               buttonsChoices(
                 width: _width,
                 iconData: Icons.person_outlined,
                 iconData2: Icons.computer,
                 context: context,
                 playWithComputer: true
               ),

               const SizedBox(height: 30,),

               buttonsChoices(
                   width: _width,
                   iconData: Icons.person_outlined,
                   iconData2: Icons.person_outlined,
                   context: context,
                   playWithComputer: false

               ),
             ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buttonsChoices({
  required double width,
    required IconData iconData,
    required IconData iconData2,
    required BuildContext context,
    required bool playWithComputer
    // required VoidCallback function
}){
    return   SizedBox(
      width: width /2.5,
      child: ElevatedButton(
        onPressed: (){
          GameValues gameValues =  GameValues.getInstance(playWithComputer: playWithComputer);
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return  const GameScreen();
          }));
        },child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children:  [
          const SizedBox(width: 20,),
          Icon(iconData),
          const Spacer(),
          const Text('VS'),
          const Spacer(),
          Icon(iconData2),
          const SizedBox(width: 20,),
        ],
      ),),
    );
  }
}
