import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    Path mainBg = Path();
    mainBg.addRRect(RRect.fromLTRBAndCorners(
      0,
      0,
      width,
      height,
      topLeft: Radius.circular(width * 0.3),
      topRight: Radius.circular(width * 0.08),
      bottomLeft: Radius.circular(width * 0.08),
      bottomRight: Radius.circular(width * 0.3),
    ));
    mainBg.close();
    paint.color = Color(0xFF2f8754);
    canvas.drawPath(mainBg, paint);

    Path ovalPath = Path();
    ovalPath.moveTo(0, height*0.4);
    ovalPath.quadraticBezierTo(width*0.6, height*0.55, width*0.8, height*0.2);
    ovalPath.quadraticBezierTo(width*0.85, height*0.1, width*0.8, 0);
    ovalPath.lineTo(width*0.3, 0);
    ovalPath.quadraticBezierTo(0, 0, 0, width*0.3);
    ovalPath.close();
    paint.color=Color(0xFFc5e0cf);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
