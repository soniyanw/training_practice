import 'package:flutter/material.dart';
import 'package:practice/database/use_database.dart';

Future<void> main() async {
  runApp(MaterialApp(
    home: Container(),
  ));
  await useDatabase();
}
