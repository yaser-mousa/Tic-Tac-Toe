import '../interface_difficulty_levels.dart';

abstract class IDifficultyFactory{

  IDifficultyLevels getDifficulty(int difficultNumber);
}