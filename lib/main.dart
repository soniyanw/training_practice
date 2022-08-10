import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: CustomPaint(
          child: Container(),
          painter: DemoPainter(),
        ));
  }
}

class DemoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.red;
    var paint1 = Paint()..color = Colors.green;
    var paint2 = Paint()..color = Colors.yellow;
    var paint3 = Paint()..color = Colors.white;

    var path = Path();
    path.moveTo(200, 200);
    path.lineTo(200, 200);
    path.lineTo(200, 200);
    path.close();

    canvas.drawRect(
        Offset((size / 2).width, (size / 6).height) & const Size(100, 400),
        paint1);
    canvas.drawRect(
        Offset((size / 4).width, (size / 6).height) & const Size(100, 400),
        paint);
    canvas.drawRect(
        Offset((size / 3).width, (size / 4.8).height) & const Size(50, 50),
        paint2);
    canvas.drawRect(
        Offset((size / 3).width, (size / 3.2).height) & const Size(50, 50),
        paint2);
    canvas.drawRect(
        Offset((size / 3).width, (size / 2.4).height) & const Size(50, 50),
        paint2);
    canvas.drawRect(
        Offset((size / 3.2).width, (size / 1.9).height) & const Size(60, 60),
        paint3);

    canvas.drawCircle(
        Offset(((size / 4) * 3).width, (size / 3.5).height), 50.0, paint);
    canvas.drawCircle(
        Offset(((size / 4) * 3).width, (size / 1.9).height), 50.0, paint);
    canvas.drawCircle(
        Offset(((size / 4) * 3).width, (size / 3.5).height), 20.0, paint2);
    canvas.drawCircle(
        Offset(((size / 4) * 3).width, (size / 1.9).height), 20.0, paint2);
    canvas.drawPath(path, Paint()..color = Colors.green);

    canvas.drawLine(
        Offset(2, size.height), Offset(size.width, size.height), paint1);
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset((size / 4.5).width, 135),
        width: 50,
        height: 50,
      ),
      1.6,
      2 * 3.14 - 2,
      true,
      paint1,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
