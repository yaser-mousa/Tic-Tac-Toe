import 'package:tictactoe/view_model/line_painter/line_painter.dart';

import '../share/componanets/componanets.dart';

class CheckWin{
static  CheckWin? _instance;
  CheckWin ._();
  final List<String> _winningNumbers = ['123', '456', '789', '147', '258', '369','159', '357'];
  List<int> _playerListNumbersInt = [];
  String? _playerNumbersStr;
  bool _isWin=false;
  int? _playerRound;

 static CheckWin getInstance(){
    _instance ??= CheckWin ._();
    return _instance!;
  }

  void _convertToStr(){

    _playerNumbersStr = _playerListNumbersInt.join();
  }

  void _setValues(List<int> playerListNumbersInt , int playerRound){
    _playerListNumbersInt  = playerListNumbersInt;
    _playerRound = playerRound;
  }

  bool checkNumbers(List<int> playerListNumbersInt , int playerRound){

    _setValues(playerListNumbersInt,playerRound );
    _convertToStr();

    for (var element in _winningNumbers) {
      // print(_playerNumbersStr);
      _isWin = (_playerNumbersStr!.contains(element[0])) && _playerNumbersStr!.contains(element[1]) && _playerNumbersStr!.contains(element[2] );

     if(_isWin) {
       showToastMassage('Player ${playerRound+1} Win').then((value) {
         print('hello /////// /////// ///');
       });
       LinePainter linePainter = LinePainter.getInstance();
       linePainter.playerNumbersWin = element;

       _isWin= false;
      return true;;
     }

    }

    return false;


  }


}