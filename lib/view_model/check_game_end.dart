 import 'package:tictactoe/view_model/find_empty_boxes.dart';

import '../models/game_values.dart';
import '../share/componanets/componanets.dart';
import 'future _chances_of_winning.dart';

class IsGameEnd{


  final GameValues _gameValues = GameValues.getInstance();
  final FindEmptyBoxes _findEmptyBoxes = FindEmptyBoxes.getInstance();
  List<int> boxesEmptyIndex = [];
  bool isEnd= false;
 final FutureChancesWinning _futureChancesWinning = FutureChancesWinning.getInstance();


bool checkGameEnd(List<int> playerListNumbersInt ){

  if(_gameValues.bookedBoxesCount>=7 && _gameValues.bookedBoxesCount<9){
    boxesEmptyIndex = _findEmptyBoxes.findEmptyBoxes();

    _futureChancesWinning.boxesEmptyIndex = boxesEmptyIndex;

    if(_futureChancesWinning.checkForWinningNumbers(playerListNumbersInt)){
      showToastMassage('Game End');
    }

    return _futureChancesWinning.checkForWinningNumbers(playerListNumbersInt);
  }
 return false;

 }





}


