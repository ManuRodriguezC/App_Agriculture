import 'package:flutter/material.dart';

// This funcion create the differents structurures implement in the design.

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

class pinkCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 235, 205, 227)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7758333, size.height * 0.9857143);
    path0.lineTo(size.width * 0.7850000, size.height * 0.9300000);
    path0.quadraticBezierTo(size.width * 0.7570833, size.height * 0.9042857,
        size.width * 0.7566667, size.height * 0.8842857);
    path0.cubicTo(
        size.width * 0.7547917,
        size.height * 0.8682143,
        size.width * 0.7585417,
        size.height * 0.8489286,
        size.width * 0.7591667,
        size.height * 0.8371429);
    path0.quadraticBezierTo(size.width * 0.7675000, size.height * 0.8625000,
        size.width * 0.7891667, size.height * 0.8814286);
    path0.quadraticBezierTo(size.width * 0.7639583, size.height * 0.8207143,
        size.width * 0.7433333, size.height * 0.7928571);
    path0.cubicTo(
        size.width * 0.7445833,
        size.height * 0.7767857,
        size.width * 0.7487500,
        size.height * 0.7646429,
        size.width * 0.7483333,
        size.height * 0.7285714);
    path0.cubicTo(
        size.width * 0.7464583,
        size.height * 0.7196429,
        size.width * 0.7427083,
        size.height * 0.7017857,
        size.width * 0.7408333,
        size.height * 0.6928571);
    path0.cubicTo(
        size.width * 0.7429167,
        size.height * 0.6575000,
        size.width * 0.7545833,
        size.height * 0.6425000,
        size.width * 0.7591667,
        size.height * 0.6257143);
    path0.quadraticBezierTo(size.width * 0.7675000, size.height * 0.6592857,
        size.width * 0.7858333, size.height * 0.6857143);
    path0.quadraticBezierTo(size.width * 0.7718750, size.height * 0.6357143,
        size.width * 0.7716667, size.height * 0.6114286);
    path0.quadraticBezierTo(size.width * 0.7693750, size.height * 0.5953571,
        size.width * 0.7791667, size.height * 0.5814286);
    path0.quadraticBezierTo(size.width * 0.7716667, size.height * 0.5657143,
        size.width * 0.7725000, size.height * 0.5528571);
    path0.quadraticBezierTo(size.width * 0.7775000, size.height * 0.5375000,
        size.width * 0.7925000, size.height * 0.5257143);
    path0.quadraticBezierTo(size.width * 0.8006250, size.height * 0.5257143,
        size.width * 0.8033333, size.height * 0.5257143);
    path0.quadraticBezierTo(size.width * 0.8100000, size.height * 0.5182143,
        size.width * 0.8166667, size.height * 0.4957143);
    path0.quadraticBezierTo(size.width * 0.8241667, size.height * 0.4842857,
        size.width * 0.8333333, size.height * 0.4842857);
    path0.quadraticBezierTo(size.width * 0.8364583, size.height * 0.4782143,
        size.width * 0.8458333, size.height * 0.4600000);
    path0.quadraticBezierTo(size.width * 0.8562500, size.height * 0.4457143,
        size.width * 0.8675000, size.height * 0.4371429);
    path0.quadraticBezierTo(size.width * 0.8610417, size.height * 0.4525000,
        size.width * 0.8616667, size.height * 0.4700000);
    path0.quadraticBezierTo(size.width * 0.8564583, size.height * 0.4925000,
        size.width * 0.8625000, size.height * 0.5057143);
    path0.quadraticBezierTo(size.width * 0.8672917, size.height * 0.5164286,
        size.width * 0.8716667, size.height * 0.5314286);
    path0.lineTo(size.width * 0.8725000, size.height * 0.5571429);
    path0.quadraticBezierTo(size.width * 0.8731250, size.height * 0.5771429,
        size.width * 0.8733333, size.height * 0.5828571);
    path0.quadraticBezierTo(size.width * 0.8595833, size.height * 0.6000000,
        size.width * 0.8450000, size.height * 0.6514286);
    path0.quadraticBezierTo(size.width * 0.8622917, size.height * 0.6335714,
        size.width * 0.8725000, size.height * 0.6085714);
    path0.quadraticBezierTo(size.width * 0.8787500, size.height * 0.6346429,
        size.width * 0.8775000, size.height * 0.6671429);
    path0.quadraticBezierTo(size.width * 0.8768750, size.height * 0.6878571,
        size.width * 0.8733333, size.height * 0.6985714);
    path0.quadraticBezierTo(size.width * 0.8650000, size.height * 0.7103571,
        size.width * 0.8500000, size.height * 0.7228571);
    path0.quadraticBezierTo(size.width * 0.8343750, size.height * 0.7396429,
        size.width * 0.8291667, size.height * 0.7528571);
    path0.quadraticBezierTo(size.width * 0.8456250, size.height * 0.7603571,
        size.width * 0.8550000, size.height * 0.7542857);
    path0.quadraticBezierTo(size.width * 0.8720833, size.height * 0.7439286,
        size.width * 0.8766667, size.height * 0.7328571);
    path0.quadraticBezierTo(size.width * 0.8818750, size.height * 0.7439286,
        size.width * 0.8841667, size.height * 0.7714286);
    path0.quadraticBezierTo(size.width * 0.8800000, size.height * 0.7982143,
        size.width * 0.8741667, size.height * 0.8128571);
    path0.quadraticBezierTo(size.width * 0.8793750, size.height * 0.8175000,
        size.width * 0.8850000, size.height * 0.8257143);
    path0.lineTo(size.width * 0.8850000, size.height * 0.8700000);
    path0.quadraticBezierTo(size.width * 0.8783333, size.height * 0.8907143,
        size.width * 0.8775000, size.height * 0.8985714);
    path0.quadraticBezierTo(size.width * 0.8756250, size.height * 0.9032143,
        size.width * 0.8733333, size.height * 0.9171429);
    path0.quadraticBezierTo(size.width * 0.8645833, size.height * 0.9278571,
        size.width * 0.8616667, size.height * 0.9314286);
    path0.quadraticBezierTo(size.width * 0.8364583, size.height * 0.9385714,
        size.width * 0.7975000, size.height * 0.9314286);
    path0.lineTo(size.width * 0.7875000, size.height * 0.9828571);
    path0.lineTo(size.width * 0.7758333, size.height * 0.9857143);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class greenCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 40, 59, 37)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1591667, size.height * 0.9471429);
    path0.lineTo(size.width * 0.1533333, size.height * 0.9300000);
    path0.quadraticBezierTo(size.width * 0.1152083, size.height * 0.9575000,
        size.width * 0.0958333, size.height * 0.9628571);
    path0.quadraticBezierTo(size.width * 0.0789583, size.height * 0.9607143,
        size.width * 0.0350000, size.height * 0.9714286);
    path0.quadraticBezierTo(size.width * 0.0697917, size.height * 0.9510714,
        size.width * 0.0858333, size.height * 0.9442857);
    path0.quadraticBezierTo(size.width * 0.1068750, size.height * 0.9421429,
        size.width * 0.1500000, size.height * 0.9185714);
    path0.lineTo(size.width * 0.1441667, size.height * 0.9042857);
    path0.quadraticBezierTo(size.width * 0.1056250, size.height * 0.9085714,
        size.width * 0.0850000, size.height * 0.9271429);
    path0.quadraticBezierTo(size.width * 0.0656250, size.height * 0.9364286,
        size.width * 0.0208333, size.height * 0.9414286);
    path0.quadraticBezierTo(size.width * 0.0691667, size.height * 0.9196429,
        size.width * 0.0808333, size.height * 0.9085714);
    path0.quadraticBezierTo(size.width * 0.1031250, size.height * 0.8996429,
        size.width * 0.1366667, size.height * 0.8900000);
    path0.lineTo(size.width * 0.1316667, size.height * 0.8628571);
    path0.quadraticBezierTo(size.width * 0.0912500, size.height * 0.8878571,
        size.width * 0.0733333, size.height * 0.8942857);
    path0.quadraticBezierTo(size.width * 0.0568750, size.height * 0.9025000,
        size.width * 0.0175000, size.height * 0.8928571);
    path0.quadraticBezierTo(size.width * 0.0558333, size.height * 0.8796429,
        size.width * 0.0708333, size.height * 0.8714286);
    path0.quadraticBezierTo(size.width * 0.0862500, size.height * 0.8689286,
        size.width * 0.1258333, size.height * 0.8500000);
    path0.lineTo(size.width * 0.1208333, size.height * 0.8371429);
    path0.quadraticBezierTo(size.width * 0.0770833, size.height * 0.8589286,
        size.width * 0.0591667, size.height * 0.8585714);
    path0.quadraticBezierTo(size.width * 0.0412500, size.height * 0.8614286,
        size.width * 0.0075000, size.height * 0.8471429);
    path0.quadraticBezierTo(size.width * 0.0414583, size.height * 0.8492857,
        size.width * 0.0550000, size.height * 0.8442857);
    path0.quadraticBezierTo(size.width * 0.0760417, size.height * 0.8350000,
        size.width * 0.1158333, size.height * 0.8242857);
    path0.lineTo(size.width * 0.1083333, size.height * 0.8114286);
    path0.lineTo(size.width * 0.0658333, size.height * 0.8171429);
    path0.lineTo(size.width * 0.0216667, size.height * 0.8314286);
    path0.quadraticBezierTo(size.width * 0.0383333, size.height * 0.8185714,
        size.width * 0.0450000, size.height * 0.8142857);
    path0.quadraticBezierTo(size.width * 0.0635417, size.height * 0.8035714,
        size.width * 0.1025000, size.height * 0.8000000);
    path0.lineTo(size.width * 0.0983333, size.height * 0.7857143);
    path0.quadraticBezierTo(size.width * 0.0629167, size.height * 0.7992857,
        size.width * 0.0466667, size.height * 0.8000000);
    path0.quadraticBezierTo(size.width * 0.0377083, size.height * 0.7975000,
        size.width * 0.0108333, size.height * 0.7900000);
    path0.quadraticBezierTo(size.width * 0.0383333, size.height * 0.7867857,
        size.width * 0.0475000, size.height * 0.7857143);
    path0.quadraticBezierTo(size.width * 0.0731250, size.height * 0.7853571,
        size.width * 0.0900000, size.height * 0.7671429);
    path0.lineTo(size.width * 0.0858333, size.height * 0.7585714);
    path0.quadraticBezierTo(size.width * 0.0600000, size.height * 0.7717857,
        size.width * 0.0458333, size.height * 0.7685714);
    path0.quadraticBezierTo(size.width * 0.0395833, size.height * 0.7639286,
        size.width * 0.0208333, size.height * 0.7500000);
    path0.lineTo(size.width * 0.0616667, size.height * 0.7600000);
    path0.lineTo(size.width * 0.0791667, size.height * 0.7457143);
    path0.lineTo(size.width * 0.0800000, size.height * 0.7371429);
    path0.quadraticBezierTo(size.width * 0.0591667, size.height * 0.7400000,
        size.width * 0.0500000, size.height * 0.7371429);
    path0.quadraticBezierTo(size.width * 0.0422917, size.height * 0.7332143,
        size.width * 0.0258333, size.height * 0.7214286);
    path0.quadraticBezierTo(size.width * 0.0458333, size.height * 0.7114286,
        size.width * 0.0558333, size.height * 0.7157143);
    path0.quadraticBezierTo(size.width * 0.0600000, size.height * 0.7303571,
        size.width * 0.0791667, size.height * 0.7228571);
    path0.quadraticBezierTo(size.width * 0.0691667, size.height * 0.6975000,
        size.width * 0.0691667, size.height * 0.6757143);
    path0.quadraticBezierTo(size.width * 0.0695833, size.height * 0.6632143,
        size.width * 0.0741667, size.height * 0.6371429);
    path0.quadraticBezierTo(size.width * 0.0837500, size.height * 0.6567857,
        size.width * 0.0858333, size.height * 0.6728571);
    path0.quadraticBezierTo(size.width * 0.0870833, size.height * 0.6850000,
        size.width * 0.0841667, size.height * 0.7214286);
    path0.lineTo(size.width * 0.1025000, size.height * 0.6585714);
    path0.lineTo(size.width * 0.1108333, size.height * 0.6471429);
    path0.lineTo(size.width * 0.0983333, size.height * 0.6942857);
    path0.lineTo(size.width * 0.0866667, size.height * 0.7285714);
    path0.lineTo(size.width * 0.1100000, size.height * 0.7085714);
    path0.lineTo(size.width * 0.1241667, size.height * 0.6785714);
    path0.lineTo(size.width * 0.1158333, size.height * 0.7128571);
    path0.lineTo(size.width * 0.0925000, size.height * 0.7400000);
    path0.lineTo(size.width * 0.0925000, size.height * 0.7500000);
    path0.lineTo(size.width * 0.1191667, size.height * 0.7271429);
    path0.lineTo(size.width * 0.1383333, size.height * 0.6785714);
    path0.lineTo(size.width * 0.1283333, size.height * 0.7314286);
    path0.lineTo(size.width * 0.0991667, size.height * 0.7571429);
    path0.lineTo(size.width * 0.1025000, size.height * 0.7642857);
    path0.lineTo(size.width * 0.1300000, size.height * 0.7414286);
    path0.lineTo(size.width * 0.1500000, size.height * 0.7014286);
    path0.lineTo(size.width * 0.1400000, size.height * 0.7428571);
    path0.lineTo(size.width * 0.1108333, size.height * 0.7671429);
    path0.lineTo(size.width * 0.1083333, size.height * 0.7785714);
    path0.lineTo(size.width * 0.1400000, size.height * 0.7542857);
    path0.lineTo(size.width * 0.1666667, size.height * 0.7057143);
    path0.lineTo(size.width * 0.1458333, size.height * 0.7571429);
    path0.lineTo(size.width * 0.1141667, size.height * 0.7871429);
    path0.lineTo(size.width * 0.1191667, size.height * 0.7985714);
    path0.lineTo(size.width * 0.1441667, size.height * 0.7700000);
    path0.lineTo(size.width * 0.1883333, size.height * 0.7214286);
    path0.lineTo(size.width * 0.1525000, size.height * 0.7714286);
    path0.lineTo(size.width * 0.1241667, size.height * 0.8085714);
    path0.lineTo(size.width * 0.1300000, size.height * 0.8242857);
    path0.lineTo(size.width * 0.1566667, size.height * 0.7828571);
    path0.lineTo(size.width * 0.2041667, size.height * 0.7371429);
    path0.lineTo(size.width * 0.1625000, size.height * 0.7914286);
    path0.lineTo(size.width * 0.1350000, size.height * 0.8314286);
    path0.lineTo(size.width * 0.1358333, size.height * 0.8442857);
    path0.quadraticBezierTo(size.width * 0.1518750, size.height * 0.8132143,
        size.width * 0.1616667, size.height * 0.8028571);
    path0.quadraticBezierTo(size.width * 0.1770833, size.height * 0.7878571,
        size.width * 0.2100000, size.height * 0.7600000);
    path0.lineTo(size.width * 0.1691667, size.height * 0.8114286);
    path0.lineTo(size.width * 0.1441667, size.height * 0.8471429);
    path0.lineTo(size.width * 0.1416667, size.height * 0.8642857);
    path0.lineTo(size.width * 0.1691667, size.height * 0.8357143);
    path0.lineTo(size.width * 0.2108333, size.height * 0.7785714);
    path0.lineTo(size.width * 0.2216667, size.height * 0.7814286);
    path0.lineTo(size.width * 0.1775000, size.height * 0.8400000);
    path0.lineTo(size.width * 0.1458333, size.height * 0.8714286);
    path0.lineTo(size.width * 0.1483333, size.height * 0.8871429);
    path0.lineTo(size.width * 0.1866667, size.height * 0.8414286);
    path0.lineTo(size.width * 0.2341667, size.height * 0.7985714);
    path0.lineTo(size.width * 0.1900000, size.height * 0.8514286);
    path0.lineTo(size.width * 0.1566667, size.height * 0.8928571);
    path0.lineTo(size.width * 0.1583333, size.height * 0.9057143);
    path0.quadraticBezierTo(size.width * 0.1866667, size.height * 0.8703571,
        size.width * 0.1983333, size.height * 0.8585714);
    path0.quadraticBezierTo(size.width * 0.2081250, size.height * 0.8489286,
        size.width * 0.2475000, size.height * 0.8314286);
    path0.quadraticBezierTo(size.width * 0.2110417, size.height * 0.8625000,
        size.width * 0.2000000, size.height * 0.8728571);
    path0.quadraticBezierTo(size.width * 0.1910417, size.height * 0.8821429,
        size.width * 0.1641667, size.height * 0.9100000);
    path0.lineTo(size.width * 0.1650000, size.height * 0.9185714);
    path0.quadraticBezierTo(size.width * 0.1912500, size.height * 0.8989286,
        size.width * 0.2058333, size.height * 0.8842857);
    path0.quadraticBezierTo(size.width * 0.2216667, size.height * 0.8725000,
        size.width * 0.2466667, size.height * 0.8700000);
    path0.quadraticBezierTo(size.width * 0.2181250, size.height * 0.8953571,
        size.width * 0.2091667, size.height * 0.9014286);
    path0.quadraticBezierTo(size.width * 0.1985417, size.height * 0.9089286,
        size.width * 0.1683333, size.height * 0.9242857);
    path0.lineTo(size.width * 0.1775000, size.height * 0.9414286);
    path0.lineTo(size.width * 0.1641667, size.height * 0.9600000);
    path0.lineTo(size.width * 0.1591667, size.height * 0.9471429);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
