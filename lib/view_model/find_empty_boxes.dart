import 'package:tictactoe/models/game_values.dart';

class FindEmptyBoxes{
  FindEmptyBoxes ._();
  List<int>boxesEmptyIndex = [];
 static FindEmptyBoxes? _instance;
final GameValues _gameValues = GameValues.getInstance();

  static FindEmptyBoxes getInstance(){
    _instance??= FindEmptyBoxes ._();
    return _instance!;
  }

  List<int> findEmptyBoxes(){
    boxesEmptyIndex = [];
    for (int index=0;  index< _gameValues.buttonsBooked.length ; index++) {
      if(_gameValues.buttonsBooked[index]==''){
        boxesEmptyIndex.add(index+1);
      }

    }

    return boxesEmptyIndex;
    // print( boxesEmptyIndex);
  }
}