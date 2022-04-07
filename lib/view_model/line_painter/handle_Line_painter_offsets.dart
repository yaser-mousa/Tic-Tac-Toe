
class HandleLinePainterOffsets{
  final List<String> _winningNumbers = ['123', '456', '789', '147', '258', '369','159', '357'];
  String? _playerNumbersWin ;
  List<double> offsets = [];
  double _size= 0;
  static HandleLinePainterOffsets? _instance;
  HandleLinePainterOffsets ._();

  static HandleLinePainterOffsets getInstance (){
    _instance??= HandleLinePainterOffsets ._();
    return _instance!;
  }

  void _setValues({ required double size, required String playerNumbersWin }){
    _size = size;
    _playerNumbersWin = playerNumbersWin;
  }

  List<double> setOffsets({ required double size, required String playerNumbersWin }){
    _setValues(size: size, playerNumbersWin: playerNumbersWin);

    switch(_playerNumbersWin){
      case '123':
        return [0, _size /9, _size , _size/9,  _size ,];
      case '456':
        return [0, _size  /2.1, _size, _size/2.1,  _size ,];

      case '789':
        return [0, _size /1.170, _size , _size/1.170,  _size ];

      case "147":
        return [_size/7.5, _size , _size/7.5, 0 ];

      case '258':
        return [_size/2, _size , _size/2, 0 ];

      case '369':
        return [_size/1.157, _size ,_size/1.157, 0 ];

      case '159':
        return [0, _size/40, _size, _size];

      default:
        return [0, _size, _size, _size/40];

    }


  }


}