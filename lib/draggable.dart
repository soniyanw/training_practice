import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({Key? key}) : super(key: key);

  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Color value = Colors.blueAccent;
  String str = "Drop Here";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Draggable(
                data: Colors.grey,
                child: Container(
                  height: 200,
                  child: Center(
                    child: Text(
                      "You can drag me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: 200,
                  color: Colors.pink,
                ),
                feedback: Container(
                  height: 200,
                  width: 200,
                  child: Center(
                      child: Text(
                    "I'm being dragged",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
                  color: Colors.yellow,
                ),
                childWhenDragging: Container(
                  height: 200,
                  width: 200,
                  child: Center(
                      child: Text(
                    "This is my Old Place",
                    style: TextStyle(color: Colors.white),
                  )),
                  color: Colors.red,
                ),
              ),
              DragTarget(
                builder: (BuildContext comtext, List<dynamic> accepted,
                    List<dynamic> rejected) {
                  return Container(
                    height: 200,
                    width: 200,
                    child: Center(
                        child: Text(
                      str,
                      style: TextStyle(color: Colors.white),
                    )),
                    color: value,
                  );
                },
                onAccept: (Color color) {
                  setState(() {
                    value = color;
                    str = "Occupied";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
