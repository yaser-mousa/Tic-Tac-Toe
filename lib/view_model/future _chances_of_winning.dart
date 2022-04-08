import 'package:tictactoe/models/game_values.dart';
import 'package:tictactoe/view_model/check_win.dart';

class FutureChancesWinning extends CheckWin{
  static FutureChancesWinning? _instance;
  FutureChancesWinning ._();
 List<int> boxesEmptyIndex = [];
  String? playerNumbersTest;
  bool _isWin = false;
  final GameValues _gameValues = GameValues.getInstance();

 static FutureChancesWinning getInstance( ){

    _instance??= FutureChancesWinning ._();
    return _instance!;
  }




  @override
  bool checkForWinningNumbers(List<int> playerListNumbersInt ){

    if(_gameValues.computerBoxesNumbers.isNotEmpty){
      if(checkWining(_gameValues.computerBoxesNumbers)){
        return false;
      }

    }

    if(_gameValues.playerOneBoxesNumbers.isNotEmpty){
     if( checkWining(_gameValues.playerOneBoxesNumbers)){
       return false;
     }
    }

    if(_gameValues.playerTwoBoxesNumbers.isNotEmpty){
      if(checkWining(_gameValues.playerTwoBoxesNumbers)){
        return false;
      }
    }



    print('FutureChancesWinning ============ false');

    return true;



  }


  bool checkWining(List<int> playerBoxesNumbers){


      for(int index=0 ; index<boxesEmptyIndex.length; index++){

        super.setValues(playerBoxesNumbers);
        super.playerNumbersStr =super.playerNumbersStr! + boxesEmptyIndex[index].toString();

        for (var element in super.winningNumbers) {
          // print(_playerNumbersStr);
          _isWin = (super.playerNumbersStr!.contains(element[0])) && super.playerNumbersStr!.contains(element[1]) && super.playerNumbersStr!.contains(element[2] );

          if(_isWin){
             print('FutureChancesWinning ============ true');
            return true;
          }


        }
      }
      return false;

  }


}