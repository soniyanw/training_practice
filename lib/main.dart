// @dart=2.9

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyModel with ChangeNotifier {
  List<String> todo = [];
  void doSomething(String newtodo) {
    todo.add(newtodo);
    print(todo);
    notifyListeners();
  }
}

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: MaterialApp(home: Frontpage()),
    );
  }
}

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My todos'),
        centerTitle: true,
      ),
      body:
          SafeArea(child: Consumer<MyModel>(builder: (context, myModel, child) {
        return ListView.builder(
            itemCount: myModel.todo.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Card(
                  elevation: 10,
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      myModel.todo[index],
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              );
            });
      })),
    ));
  }
}

class Frontpage extends StatefulWidget {
  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  TextEditingController controller = TextEditingController();
  String addtodo;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Adding todo page"),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: TextField(
                controller: controller,
                onChanged: (val) => addtodo = val,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ),
          Consumer<MyModel>(builder: (context, myModel, child) {
            return MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  myModel.doSomething(addtodo);
                  print(myModel.todo);
                  controller.clear();
                },
                child: Text(
                  "Add todo",
                  style: TextStyle(color: Colors.white),
                ));
          }),
          MaterialButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListPage()),
                );
              },
              child: Text(
                "Show todos",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    ));
  }
}
