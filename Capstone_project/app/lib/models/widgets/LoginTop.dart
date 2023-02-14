import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 155, 206, 150)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.4685714);
    path0.quadraticBezierTo(size.width * 0.1110417, size.height * 0.2860714,
        size.width * 0.2166667, size.height * 0.2914286);
    path0.cubicTo(
        size.width * 0.3225000,
        size.height * 0.2885714,
        size.width * 0.3533333,
        size.height * 0.4114286,
        size.width * 0.4550000,
        size.height * 0.4242857);
    path0.cubicTo(
        size.width * 0.5264583,
        size.height * 0.4307143,
        size.width * 0.6377083,
        size.height * 0.2935714,
        size.width * 0.7208333,
        size.height * 0.3271429);
    path0.cubicTo(
        size.width * 0.7881250,
        size.height * 0.3403571,
        size.width * 0.8902083,
        size.height * 0.5967857,
        size.width * 0.9408333,
        size.height * 0.5714286);
    path0.quadraticBezierTo(size.width * 0.9714583, size.height * 0.5717857,
        size.width, size.height * 0.5214286);
    path0.lineTo(size.width, 0);
    path0.lineTo(0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class LoginCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 236, 239, 242)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.4518667, size.height * 0.3930857);
    path0.cubicTo(
        size.width * 0.4687417,
        size.height * 0.3946571,
        size.width * 0.5029250,
        size.height * 0.3726571,
        size.width * 0.5164000,
        size.height * 0.3597714);
    path0.cubicTo(
        size.width * 0.5233167,
        size.height * 0.3494714,
        size.width * 0.5180833,
        size.height * 0.3414429,
        size.width * 0.5147333,
        size.height * 0.3430857);
    path0.cubicTo(
        size.width * 0.4981167,
        size.height * 0.3504286,
        size.width * 0.4729500,
        size.height * 0.3698286,
        size.width * 0.4508333,
        size.height * 0.3680571);
    path0.cubicTo(
        size.width * 0.4325833,
        size.height * 0.3647143,
        size.width * 0.4070833,
        size.height * 0.3489143,
        size.width * 0.3947000,
        size.height * 0.3396000);
    path0.cubicTo(
        size.width * 0.3860167,
        size.height * 0.3377714,
        size.width * 0.3885750,
        size.height * 0.3529714,
        size.width * 0.3975333,
        size.height * 0.3580571);
    path0.cubicTo(
        size.width * 0.4118500,
        size.height * 0.3680714,
        size.width * 0.4269083,
        size.height * 0.3932143,
        size.width * 0.4518667,
        size.height * 0.3930857);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class smallCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 228, 235, 240)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.9008333, size.height * 0.5028571);
    path0.quadraticBezierTo(size.width * 0.8979167, size.height * 0.5078571,
        size.width * 0.8991667, size.height * 0.5171429);
    path0.quadraticBezierTo(size.width * 0.9166667, size.height * 0.5435714,
        size.width * 0.9258333, size.height * 0.5428571);
    path0.quadraticBezierTo(size.width * 0.9329167, size.height * 0.5485714,
        size.width * 0.9541667, size.height * 0.5371429);
    path0.quadraticBezierTo(size.width * 0.9591667, size.height * 0.5257143,
        size.width * 0.9541667, size.height * 0.5200000);
    path0.cubicTo(
        size.width * 0.9479167,
        size.height * 0.5214286,
        size.width * 0.9354167,
        size.height * 0.5257143,
        size.width * 0.9291667,
        size.height * 0.5257143);
    path0.cubicTo(
        size.width * 0.9204167,
        size.height * 0.5228571,
        size.width * 0.9220833,
        size.height * 0.5200000,
        size.width * 0.9008333,
        size.height * 0.5028571);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class circleCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 240, 244, 246)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.8725000, size.height * 0.4651571);
    path1.cubicTo(
        size.width * 0.8751500,
        size.height * 0.4651571,
        size.width * 0.8794917,
        size.height * 0.4684857,
        size.width * 0.8794917,
        size.height * 0.4771429);
    path1.cubicTo(
        size.width * 0.8794917,
        size.height * 0.4817000,
        size.width * 0.8773000,
        size.height * 0.4891429,
        size.width * 0.8725000,
        size.height * 0.4891429);
    path1.cubicTo(
        size.width * 0.8698417,
        size.height * 0.4891429,
        size.width * 0.8662083,
        size.height * 0.4856429,
        size.width * 0.8655000,
        size.height * 0.4771429);
    path1.cubicTo(
        size.width * 0.8655000,
        size.height * 0.4726000,
        size.width * 0.8676917,
        size.height * 0.4651571,
        size.width * 0.8725000,
        size.height * 0.4651571);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
