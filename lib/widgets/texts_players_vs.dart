import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../share/style/char_color.dart';
import '../view_model/handle_head_texts.dart';

class PlayerVsYasserTexts extends StatelessWidget {
   PlayerVsYasserTexts({Key? key }) : super(key: key);
  final HandleHeadTexts _headTexts = HandleHeadTexts();
    Map<String, dynamic>? _headTextsList;
  final CharStyle charStyle = CharStyle.getInstance();

  @override
  Widget build(BuildContext context) {
    _headTextsList = _headTexts.playerNames();
     double textSize =  MediaQuery.of(context).size.width;
     print(textSize.round());

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Expanded(
            child: Column(
              children:  [
                AutoSizeText(
                    _headTextsList!['char one'] , maxLines :1,style:  TextStyle(fontSize: 50,height: 0.5, color: charStyle.colorForHeadPlayers(_headTextsList!['char one']) )),
                AutoSizeText(_headTextsList!['name one'],maxLines :1,style:  TextStyle(fontSize: 30, color: charStyle.colorForHeadPlayers(_headTextsList!['char one'])),),
              ],
            ),
          ),
          const SizedBox(width: 30,),
          AutoSizeText('VS',style: TextStyle(fontSize: 30,height: 0.5, color: Colors.blue),),
          const SizedBox(width: 30,),
          Expanded(
            child: Column(
              children:  [
                AutoSizeText(_headTextsList!['char two'] , maxLines :1,style:  TextStyle(fontSize: 50,height: 0.5, color: charStyle.colorForHeadPlayers(_headTextsList!['char two'])),),
                AutoSizeText( _headTextsList!['name two'],maxLines :1 ,style:  TextStyle( fontSize: 30, color: charStyle.colorForHeadPlayers(_headTextsList!['char two'])),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
