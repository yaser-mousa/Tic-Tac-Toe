import 'package:tictactoe/models/game_values.dart';
import 'package:tictactoe/view_model/check_game_end.dart';
import 'package:tictactoe/view_model/line_painter/line_painter.dart';

import '../share/componanets/componanets.dart';

class CheckWin{
static  CheckWin? _instance;
  CheckWin ._();
  CheckWin();
  final List<String> winningNumbers = ['123', '456', '789', '147', '258', '369','159', '357'];
  List<int> _playerListNumbersInt = [];
  String? playerNumbersStr;
  bool _isWin=false;
  // int? _playerRound;
final  GameValues _gameValues = GameValues.getInstance();



 static CheckWin getInstance(){
    _instance ??= CheckWin ._();
    return _instance!;
  }

void setValues(List<int> playerListNumbersInt){
  _playerListNumbersInt  = playerListNumbersInt;
  convertToStr();
}

  void convertToStr(){
     playerNumbersStr = _playerListNumbersInt.join();
  }



  bool checkForWinningNumbers(List<int> playerListNumbersInt ){

   setValues(playerListNumbersInt);


    for (var element in winningNumbers) {
      // print(_playerNumbersStr);
      _isWin = (playerNumbersStr!.contains(element[0])) && playerNumbersStr!.contains(element[1]) && playerNumbersStr!.contains(element[2] );

     if(_isWin) {
       showToastMassage('Player ${_gameValues.playerRound+1} Win');
       LinePainter linePainter = LinePainter.getInstance();
       linePainter.playerNumbersWin = element;
       _gameValues.changeCharsForPlayers();
      // _isWin= false;
      return true;
     }

    }



    return false;


  }


}