import 'package:flutter/material.dart';

import '../view_model/handle_head_texts.dart';

class PlayerVsYasserTexts extends StatelessWidget {
   PlayerVsYasserTexts({Key? key }) : super(key: key);
  final HandleHeadTexts _headTexts = HandleHeadTexts();
  Map<String, dynamic>? _headTextsList;

  @override
  Widget build(BuildContext context) {
    _headTextsList = _headTexts.playerNames();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          Column(
            children:  [
              Text(_headTextsList!['char one'] , style: const TextStyle(fontSize: 60,height: 0.5, color: Colors.lightGreen),),
              Text(_headTextsList!['name one'],style: const TextStyle(fontSize: 20, color: Colors.green),),
            ],
          ),
          const SizedBox(width: 30,),
          const Text('VS',style: TextStyle(fontSize: 30,height: 0.5, color: Colors.blue),),
          const SizedBox(width: 30,),
          Column(
            children:  [
              Text(_headTextsList!['char two'] , style: const TextStyle(fontSize: 60,height: 0.5, color: Colors.purpleAccent),),
              Text(_headTextsList!['name two'],style: const TextStyle(fontSize: 20, color: Colors.deepPurple),),
            ],
          ),
        ],
      ),
    );
  }
}
