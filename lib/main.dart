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
        height: 100,
        color: Colors.white,
        child: CustomPaint(
          child: Container(),
          painter: RPSCustomPainter(),
        ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 9, 0, 62)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.3939398);
    path0.lineTo(size.width * 0.3206250, size.height * 0.3911911);
    path0.quadraticBezierTo(size.width * 0.4461250, size.height * 0.3948953,
        size.width * 0.4824000, size.height * 0.3157199);
    path0.quadraticBezierTo(size.width * 0.5304750, size.height * 0.2343848,
        size.width * 0.6583750, size.height * 0.0016885);
    path0.lineTo(0, 0);
    path0.lineTo(0, size.height * 0.3939398);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 21, 0, 250)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(size.width * 0.7701250, 0);
    path1.lineTo(size.width * 0.5046750, size.height * 0.4678796);
    path1.quadraticBezierTo(size.width * 0.4809250, size.height * 0.5329450,
        size.width * 0.5886750, size.height * 0.5332199);
    path1.cubicTo(
        size.width * 0.6670750,
        size.height * 0.5333115,
        size.width * 0.8251812,
        size.height * 0.5329777,
        size.width * 0.9035750,
        size.height * 0.5330628);
    path1.quadraticBezierTo(size.width * 0.9794250, size.height * 0.5376047,
        size.width, size.height * 0.4633508);
    path1.lineTo(size.width, 0);
    path1.lineTo(size.width * 0.7701250, 0);
    path1.close();

    Paint paint2 = Paint()
      ..color = const Color.fromARGB(85, 121, 192, 248)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path2 = Path();
    path2.moveTo(size.width * 0.8299000, 0);
    path2.lineTo(size.width * 0.5900000, size.height * 0.0026178);
    path2.quadraticBezierTo(size.width * 0.4676750, size.height * 0.2342016,
        size.width * 0.4014250, size.height * 0.3150262);
    path2.cubicTo(
        size.width * 0.3641250,
        size.height * 0.3635340,
        size.width * 0.5782000,
        size.height * 0.4313613,
        size.width * 0.6397250,
        size.height * 0.3181283);
    path2.quadraticBezierTo(size.width * 0.6972250, size.height * 0.2373037,
        size.width * 0.8299000, 0);
    path2.close();

    canvas.drawPath(path2, paint2);
    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
