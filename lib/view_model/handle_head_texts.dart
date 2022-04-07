import 'package:tictactoe/models/game_values.dart';

class HandleHeadTexts{



 // final String playerOne = "Player One";
 // final String playerTwo = "Player Two";
 // final String playerComputer = 'Co';
  final GameValues _gameValues = GameValues.getInstance();
 Map<String, dynamic> playerNames(){

   print('gameValues.playWithComputer ${_gameValues.playWithComputer}');
   if(_gameValues.playWithComputer){
     return {
       'name one': 'Player One',
       'char one' : _gameValues.playerOneChar ,
       'name two' : 'Co' ,
        'char two': _gameValues.yasserChar};
   }

   return {
     'name one': 'Player one',
     'char one' : _gameValues.playerOneChar ,
     'name two' : 'Player Two' ,
     'char two': _gameValues.playerTwoChar};
 }

}