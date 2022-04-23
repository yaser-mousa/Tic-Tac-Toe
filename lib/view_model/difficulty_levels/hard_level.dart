import 'package:tictactoe/view_model/difficulty_levels/interface_difficulty_levels.dart';
import 'package:tictactoe/view_model/difficulty_levels/plansGame/plans_game.dart';

import '../../models/game_values.dart';
import '../computer_random.dart';
import '../find_empty_boxes.dart';

class HardLevel implements IDifficultyLevels{
  final FindEmptyBoxes _findEmptyBoxes = FindEmptyBoxes.getInstance();
  final ComputerRandom _computerRandom = ComputerRandom();
  final GameValues _gameValues = GameValues.getInstance();
  final PlanesGame _planesGame = PlanesGame.getInstance();
  int planNumber=0;
  @override
  int getNumber() {

    if(_gameValues.bookedBoxesCount==8){
      return _findEmptyBoxes.findEmptyBoxes()[0];
    }

    if(_gameValues.computerBoxesNumbers.length>1){

      planNumber =  _planesGame.planOne();

      if(  planNumber != 0){
        return  planNumber;
      }

    }

    if(_gameValues.playerOneBoxesNumbers.length>1){

      planNumber = _planesGame.planTwo();

      if( planNumber!= 0){
        return planNumber;
      }
    }

    return _planesGame.planThree();


    return  _computerRandom.choiceNumber();
  }

}