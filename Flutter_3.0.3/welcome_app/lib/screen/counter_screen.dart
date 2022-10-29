import 'package:flutter/material.dart';

import '../custom_widgets/custom_button.dart';

class CounterScreen extends StatefulWidget {
  final String title;

  const CounterScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter({int? setValue}) {
    if (setValue != null) {
      _counter = setValue;
    } else {
      _counter++;
    }
    setState(() {});
  }

  void _decrementCounter() => setState(() {
        _counter--;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COUNTER PAGE'),
      ),
      body: Column(
        children: [
          _buildCardCounterRed(),
          _buildCardCounterBlue(),
          _buildCardCounterGreen(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            onTap: _incrementCounter,
            icon: Icons.arrow_upward,
            color: Colors.green,
          ),
          const SizedBox(width: 10),
          CustomButton(
            onTap: _decrementCounter,
            icon: Icons.arrow_downward,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Center _buildCardCounterRed() {
    return Center(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.red,
        child: Container(
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 3),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Center _buildCardCounterBlue() {
    return Center(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.red,
        child: Container(
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 3),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Center _buildCardCounterGreen() {
    return Center(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        splashColor: Colors.green,
        child: Container(
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 3),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
