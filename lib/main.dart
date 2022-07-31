// @dart=2.9

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
      create: (context) => MyModel(),
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('PROVIDER'),
              centerTitle: true,
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child: Text("SELECT SHAPE AND PRESS THE BUTTON"),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(35),
                    color: Colors.white,
                    child: Consumer<MyModel>(
                      builder: (context, myModel, child) {
                        return FittedBox(
                          child: myModel.center,
                          fit: BoxFit.fitWidth,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            floatingActionButton:
                Consumer<MyModel>(builder: (context, myModel, child) {
              return MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    myModel.doSomething(_selectedIndex);
                  },
                  child: Text(
                    "Change shape",
                    style: TextStyle(color: Colors.white),
                  ));
            }),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.mood), label: "Happy"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.cloud), label: "Cloud"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.sunny), label: "Sunny"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.diamond), label: "Diamond"),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              onTap: _onItemTapped,
            )),
      ),
    );
  }
}

class MyModel with ChangeNotifier {
  Icon center = Icon(Icons.mood);
  void doSomething(int index) {
    switch (index) {
      case 0:
        center = Icon(Icons.mood);
        break;
      case 1:
        center = Icon(Icons.cloud);
        break;
      case 2:
        center = Icon(Icons.sunny);
        break;
      case 3:
        center = Icon(Icons.diamond);
        break;
    }
    notifyListeners();
  }
}
