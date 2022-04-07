import 'package:flutter/material.dart';
import 'package:tictactoe/models/game_values.dart';
import 'package:tictactoe/view_model/handle_head_texts.dart';
import 'package:tictactoe/widgets/texts_players_vs.dart';

import '../share/style/char_color.dart';

import '../view_model/check_player_list.dart';
import '../view_model/line_painter/line_painter.dart';
import '../view_model/game_admin.dart';
import 'box_decoration.dart';

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {

  final List<List<int>> buttonsId = [[1,2,3],[4,5,6],[7,8,9]];
  final GameAdmin _gameAdmin = GameAdmin.getInstance();
  final GameValues _gameValues = GameValues.getInstance();
  final CharStyle _charStyle = CharStyle();
  // final HandleHeadTexts _headTexts = HandleHeadTexts();


  double fontSize =90;
  @override
  Widget build(BuildContext context) {
 double height = MediaQuery.of(context).size.height;
 double width = MediaQuery.of(context).size.width;
 double cardHeight = height * 0.7;
 double cardWidth = width >= height? cardHeight+40: width * 0.9 ;
 fontSize = cardWidth * 0.45;



    return Center(
      child: Column(



        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20,),

          PlayerVsYasserTexts(),
          Flexible(
            child: SizedBox(

              width: cardWidth,
              height: cardWidth,

              child: Stack(
                children: [
                  Container(
                    width: cardWidth,
                    height:cardWidth,

                    decoration: TicBoxDecoration(),

                    child: Card(


                      color: Colors.deepPurple,
                      child: Column(
                        children: [
                          groupOfSquares(buttonsId[0]),
                          //SizedBox(height: 10,),
                          groupOfSquares(buttonsId[1]),
                          // SizedBox(height: 10,),
                          groupOfSquares(buttonsId[2]),
                        ],
                      ),
                    ),
                  ),

                  drawLine(width: 1, height: (cardWidth-20), top: 10 , left: cardWidth * 0.33),
                  drawLine(width: 1, height: (cardWidth-20), top: 10 , left: cardWidth * 0.66),
                  drawLine(width:(cardWidth -20)  , height: 1, top: (cardWidth * 0.33) , left: 10),
                  drawLine(width: (cardWidth -20) , height: 1, top: (cardWidth * 0.66) , left: 10),

                  if(_gameAdmin.isWin)
                    drawCustomPaint(cardWidth)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }




  Widget groupOfSquares(List<int> buttonsId){
    return Expanded(
      child: Row(
        children: [
          squareWidget(buttonsId[0]),
           //   SizedBox(width: 10,),
              squareWidget(buttonsId[1]),
         // SizedBox(width: 10,),
              squareWidget(buttonsId[2]),
        ],
      ),
    );
  }

  Widget squareWidget(int buttonId){
    return Expanded(
        child: InkWell(
          onTap: (){

            _gameAdmin.addNewNumber(buttonId);
            _charStyle.addChar(_gameValues.buttonsBooked[buttonId-1], buttonId-1);

            setState(() {
            });
          },
          child: Container(
            // color: Colors.red,
            alignment: Alignment.topCenter,
            child: Text(_gameValues.buttonsBooked[buttonId-1], style: TextStyle(fontSize: fontSize,color: _charStyle.getColors()[buttonId-1],height: 0.75,
                shadows: [

                  Shadow(
                    color: Colors.lightGreen.withOpacity(0.4),
                    offset: const Offset(4,3),
                    blurRadius: 2,
                  ),

                ])),
          ),
        )
    );
  }

Widget drawCustomPaint(double cardWidth){
    return    Center(
      child: CustomPaint(
        child: Container(
          width: cardWidth-50,
          height: cardWidth-50,
          // color: Colors.amberAccent,
        ),
        foregroundPainter: LinePainter.getInstance(),
      ),
    );
}


  Widget drawLine({
  required double width,
    required double height,
    required double left,
    required double top,

}){
    return Positioned(
      left: left,
      top: top,
      child: Container(
        color: Colors.grey.withOpacity(0.3),
      width:width ,
      height:height ,
      ),
    );
}






}





