import 'package:tictactoe/view_model/difficulty_levels/easy_level.dart';
import 'package:tictactoe/view_model/difficulty_levels/hard_level.dart';
import 'package:tictactoe/view_model/difficulty_levels/interface_difficulty_levels.dart';
import 'package:tictactoe/view_model/difficulty_levels/medium_level.dart';

import 'interface_difficulty_factory.dart';

class DifficultyFactory implements IDifficultyFactory{
  @override
  IDifficultyLevels getDifficulty(int difficultNumber) {
   switch (difficultNumber){
     case 0:
       return EasyLevel();

     case 1:
       return MediumLevel();

       default:
         return HardLevel();
   }
  }

}