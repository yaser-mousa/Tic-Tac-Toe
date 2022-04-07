import 'package:flutter/material.dart';
import 'package:tictactoe/view_model/line_painter/handle_Line_painter_offsets.dart';

class LinePainter extends CustomPainter {
  String? playerNumbersWin;
  static LinePainter? _instance;
  LinePainter ._();

  static LinePainter getInstance(){
    _instance??= LinePainter ._();
    return _instance!;
  }



  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 15;
   final HandleLinePainterOffsets _handleLinePainterOffsets = HandleLinePainterOffsets.getInstance();
   List<double> offsets = _handleLinePainterOffsets.setOffsets(size: size.height, playerNumbersWin:playerNumbersWin??'123' );
    Offset start = Offset(offsets[0] , offsets[1]  );
    Offset end = Offset(offsets[2]  ,  offsets[3]  );



    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}