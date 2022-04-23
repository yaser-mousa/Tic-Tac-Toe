

import 'package:tictactoe/view_model/computer_random.dart';


import 'interface_difficulty_levels.dart';

class EasyLevel implements IDifficultyLevels{

  final ComputerRandom _computerRandom = ComputerRandom();


  @override
  int getNumber() {

  return  _computerRandom.choiceNumber();
  }

}