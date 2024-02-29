import 'package:currencyconvertor/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Convertor',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.pink,
      ),
      home: Home(),
    );
  }
}

