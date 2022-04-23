import '../models/game_values.dart';

class CheckAllowPlay{

 static CheckAllowPlay? _instance;
  CheckAllowPlay ._();
  final GameValues _gameValues = GameValues.getInstance();

  static CheckAllowPlay getInstance(){
 _instance ??= CheckAllowPlay ._();
 return _instance!;
  }


  bool _checkIsSquareNotBooked(int buttonId){
    if(_gameValues.buttonsBooked[buttonId-1]==''){
      //buttonsBooked[buttonId-1] = 'o';

      return true;
    }

    return false;
  }



  bool _checkRoundEnd(){
    if(_gameValues.roundEnd){
      _gameValues.roundEnd = false;
      return true;
    }
    return false;
  }

  bool checkAllChecks(int buttonId){
    if(_checkIsSquareNotBooked(buttonId)){
      if(_checkRoundEnd()){
        print('_checkRoundEnd');
        return true;
      }
      return false;
    }

    return false;
  }
}