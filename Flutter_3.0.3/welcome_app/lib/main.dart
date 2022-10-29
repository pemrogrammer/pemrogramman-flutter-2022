import 'package:flutter/material.dart';

import 'screen/calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const CounterScreen(title: 'Flutter Demo Home Page'),
      // home: const GridScreen(),
      home: const CalculatorScreen(),
    );
  }
}
