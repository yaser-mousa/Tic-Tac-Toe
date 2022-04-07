class GameValues{
  List<String> buttonsBooked = ['', '', '','', '', '','', '', '', ];
  List<int> playerOneNumbers = [];
  String playerOneChar = 'O';
  List<int> playerTwoNumbers = [];
  String playerTwoChar = 'X';
  List<int> yasserNumbers =[];
  String yasserChar = 'X';
  int playerRound = 0;
  bool roundEnd = true;
  static GameValues? _instance;

  GameValues ._();

  static GameValues getInstance (){
    if(_instance==null){
      _instance = GameValues ._();
      return _instance!;
    }
    return _instance!;
  }
}