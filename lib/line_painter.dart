import 'package:flutter/material.dart';

///This renders a line
class PointedLinePainter extends CustomPainter {
  //final double length;
  final Color? color;

  final bool isVertical;
  final bool reverse;

  PointedLinePainter(
      //this.length,
      {
    this.color,
    this.isVertical = true,
    this.reverse = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color ?? const Color(0xFF10154F);
    paint.style = PaintingStyle.fill;
    //paint.strokeWidth = 0.0;

    double length = isVertical ? size.height : size.width;

    var path = Path();

    path.moveTo(0, 0);

    if (isVertical) {
      if (reverse) {
        //path.moveTo(0.0, length);
        path.lineTo(1.2, 0);
        path.lineTo(0, length);
        path.lineTo(0.0, 0);
      } else {
        path.lineTo(0, length);
        path.lineTo(1.2, length);
        path.lineTo(0.0, 0);
      }
    } else {
      if (reverse) {
        path.lineTo(length, 0);
        path.lineTo(length, 1.2);
        path.lineTo(0, 0);
      } else {
        path.lineTo(length, 0);
        path.lineTo(0, 1.2);
        path.lineTo(0, 0);
      }
    }

    //path.quadraticBezierTo(length / 3, -0.5, 0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
