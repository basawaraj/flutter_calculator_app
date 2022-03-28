import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(MyApp());
// lamda expression to create  online function (ananyoous function)

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "calculator app",
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomePage(),
    );
  }
}
