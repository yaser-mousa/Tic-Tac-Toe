import 'package:flutter/material.dart';
import 'package:tictactoe/screens/game_screen.dart';
import 'package:tictactoe/widgets/body_widget.dart';

import '../models/game_values.dart';
import '../share/style/themedata.dart';

class ChoiceGame extends StatefulWidget {
  const ChoiceGame({Key? key}) : super(key: key);

  @override
  State<ChoiceGame> createState() => _ChoiceGameState();
}

class _ChoiceGameState extends State<ChoiceGame> {
  bool easyChange = true;
  bool mediumChange = false;
  bool hardChange = false;
  int difficultNumber = 0;


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

             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 checkBoxWithText(boxId: 0, text:'Easy', value:  easyChange),
                 checkBoxWithText(boxId: 1, text:'Medium', value:  mediumChange),
                 checkBoxWithText(boxId: 2, text:'Hard', value:  hardChange),
               ],
             ),


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

  Widget checkBoxWithText({
  required String text,
  required  int boxId,
    required bool value
}){

    return   Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Text(text),
          Checkbox(
              value: value, onChanged:(bool? change){
                   if(change!) {
            setState(() {
              switch(boxId){
                case 0:
                   easyChange = change ;
                   difficultNumber = 0;
                   mediumChange = false;
                   hardChange = false;
                   break;

                case 1:
                  mediumChange = change;
                  difficultNumber = 1;
                  easyChange = false;
                  hardChange = false;
                  break;

                default:
                  hardChange = change;
                  difficultNumber = 2;
                  easyChange = false;
                  mediumChange = false;

              }
            });
            }
          } ),
          const SizedBox(width: 30,),
        ],
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
          gameValues.difficultNumber = difficultNumber;
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
