import 'dart:math';

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

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _animationController;
  late Animation color;
  int dir = 0;
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat(reverse: true);
    color = ColorTween(begin: Colors.pink[100], end: Colors.white)
        .animate(_animationController);
    //CurvedAnimation(parent: _animationController, curve: Curves.bounceOut)
    _animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Animation"),
        ),
        body: AnimatedBuilder(
          animation: _animationController,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: color.value,
            child: AnimatedBuilder(
              animation: _controller,
              child: Container(
                width: 200.0,
                height: 200.0,
                child: Image(image: AssetImage("assets/images.jpeg")),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: dir == 1
                      ? _controller.value * 2 * pi
                      : _controller.value * -2 * pi,
                  child: child,
                );
              },
            ),
          ),
          builder: (context, child) {
            return Container(
              child: child,
            );
          },
        ),
        floatingActionButton: MaterialButton(
          color: Colors.pink,
          child: Text(
            "Change Direction",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            dir = dir == 1 ? 0 : 1;
            setState(() {});
          },
        ));
  }
}
