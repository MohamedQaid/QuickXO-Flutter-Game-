import 'package:flutter/material.dart';

class WinningLinePainter extends CustomPainter {
  final List<int> winningCombination;

  WinningLinePainter(this.winningCombination);

  @override
  void paint(Canvas canvas, Size size) {
    if (winningCombination.isEmpty) return;

    double cellWidth = size.width / 3;
    double cellHeight = size.height / 3;

    Offset start =
        getCellPosition(winningCombination[0], cellWidth, cellHeight);
    Offset end = getCellPosition(winningCombination[2], cellWidth, cellHeight);

    final paint = Paint()
      ..color = Colors.orangeAccent
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(start, end, paint);
  }

  Offset getCellPosition(int index, double cellWidth, double cellHeight) {
    int row = index ~/ 3;
    int col = index % 3;
    return Offset(
        col * cellWidth + cellWidth / 2, row * cellHeight + cellHeight / 2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
