import 'package:flutter/material.dart';

import '../share/style/char_color.dart';
import '../view_model/handle_head_texts.dart';

class PlayerVsYasserTexts extends StatelessWidget {
   PlayerVsYasserTexts({Key? key }) : super(key: key);
  final HandleHeadTexts _headTexts = HandleHeadTexts();
  Map<String, dynamic>? _headTextsList;

  @override
  Widget build(BuildContext context) {
    _headTextsList = _headTexts.playerNames();
    CharStyle charStyle = CharStyle.getInstance();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Column(
            children:  [
              Text(_headTextsList!['char one'] , style:  TextStyle(fontSize: 60,height: 0.5, color: charStyle.colorForHeadPlayers(_headTextsList!['char one']) ),),
              Text(_headTextsList!['name one'],style:  TextStyle(fontSize: 20, color: charStyle.colorForHeadPlayers(_headTextsList!['char one'])),),
            ],
          ),
          const SizedBox(width: 30,),
          const Text('VS',style: TextStyle(fontSize: 30,height: 0.5, color: Colors.blue),),
          const SizedBox(width: 30,),
          Column(
            children:  [
              Text(_headTextsList!['char two'] , style:  TextStyle(fontSize: 60,height: 0.5, color: charStyle.colorForHeadPlayers(_headTextsList!['char two'])),),
              Text(_headTextsList!['name two'],style:  TextStyle(fontSize: 20, color: charStyle.colorForHeadPlayers(_headTextsList!['char two'])),),
            ],
          ),
        ],
      ),
    );
  }
}
