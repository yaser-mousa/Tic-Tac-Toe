 import '../models/game_values.dart';
import '../share/componanets/componanets.dart';
import 'future _chances_of_winning.dart';

class IsGameEnd{


  final GameValues _gameValues = GameValues.getInstance();
  List<int> boxesEmptyIndex = [];
  bool isEnd= false;
 final FutureChancesWinning _futureChancesWinning = FutureChancesWinning.getInstance();


bool checkGameEnd(List<int> playerListNumbersInt ){

  if(_gameValues.bookedBoxesCount>=7 && _gameValues.bookedBoxesCount<9){
    _findEmptyBoxes();

    _futureChancesWinning.boxesEmptyIndex = boxesEmptyIndex;

    if(_futureChancesWinning.checkForWinningNumbers(playerListNumbersInt)){
      showToastMassage('Game End');
    }

    return _futureChancesWinning.checkForWinningNumbers(playerListNumbersInt);
  }
 return false;

 }

 void _findEmptyBoxes(){
   boxesEmptyIndex = [];
   for (int index=0;  index< _gameValues.buttonsBooked.length ; index++) {
     if(_gameValues.buttonsBooked[index]==''){
       boxesEmptyIndex.add(index+1);
     }

   }

   // print( boxesEmptyIndex);
 }



}


