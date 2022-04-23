

import 'package:tictactoe/models/game_values.dart';

import '../computer_random.dart';
import '../find_empty_boxes.dart';
import '../future _chances_of_winning.dart';
import 'interface_difficulty_levels.dart';

class MediumLevel implements IDifficultyLevels{
  final FindEmptyBoxes _findEmptyBoxes = FindEmptyBoxes.getInstance();
  final ComputerRandom _computerRandom = ComputerRandom();
 final FutureChancesWinning _futureChancesWinning = FutureChancesWinning.getInstance();
 List<int> boxesEmptyIndex = [];
 final GameValues _gameValues = GameValues.getInstance();
 int winingIndex = 0;

  @override
  int getNumber() {


    if(_gameValues.bookedBoxesCount==8){
      return _findEmptyBoxes.findEmptyBoxes()[0];
    }

    if(_gameValues.computerBoxesNumbers.length>1){
      _futureChancesWinning.boxesEmptyIndex = _findEmptyBoxes.findEmptyBoxes();

      _futureChancesWinning.checkWining(_gameValues.computerBoxesNumbers);

      winingIndex = _gameValues.winingIndex;
      _gameValues.winingIndex = 0;
    print('winingIndex == $winingIndex');
      if( winingIndex != 0){
        return winingIndex;
      }

    }

 if(_gameValues.playerOneBoxesNumbers.length>1){

   _futureChancesWinning.boxesEmptyIndex = _findEmptyBoxes.findEmptyBoxes();

   _futureChancesWinning.checkWining(_gameValues.playerOneBoxesNumbers);

   winingIndex = _gameValues.winingIndex;
   _gameValues.winingIndex = 0;
   print('winingIndex == $winingIndex');
   if( winingIndex!= 0){
     return winingIndex;
   }
 }


 return  _computerRandom.choiceNumber();


  }

}