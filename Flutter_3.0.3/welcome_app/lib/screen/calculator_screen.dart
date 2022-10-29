import 'package:flutter/material.dart';

import '../custom_widgets/custom_button_number.dart';
import '../helpers/is_numberic.dart';
import '../helpers/ui_helper.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int selectNumber1 = 0, selectNumber2 = 0, resultNumber = 0;
  String? operator;

  void onClickButton(String text) {
    if (isNumberic(text)) {
      if (selectNumber1 == 0) {
        selectNumber1 = int.parse(text);
      } else if (selectNumber1 != 0 && operator == null) {
        selectNumber1 = int.parse(text);
      } else {
        selectNumber2 = int.parse(text);
      }
    } else {
      if (text != '=') {
        operator = text;
      } else {
        result(operator!);
      }
    }
    setState(() {});
  }

  void resetSelectNumbers() => setState(() {
        selectNumber1 = 0;
        selectNumber2 = 0;
        operator = null;
      });

  void result(String operator) {
    switch (operator) {
      case '+':
        resultNumber = selectNumber1 + selectNumber2;
        resetSelectNumbers();
        break;
      default:
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATOR'),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.black87,
      body: SizedBox(
        width: screenWidth(context),
        height: screenHeight(context),
        child: Center(
          child: Container(
            height: 350,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildResultBox(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildColumNumbers(listText: ['7', '4', '1', '0']),
                      _buildColumNumbers(listText: ['8', '5', '2', '.']),
                      _buildColumNumbers(listText: ['9', '6', '3', '+']),
                      _buildColumNumbers(listText: ['/', '*', '-', '=']),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildResultBox() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '$resultNumber',
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 40),
          ),
          Text(
            '$selectNumber1 ${operator ?? ''} ${selectNumber2 != 0 ? selectNumber2 : ''}',
            textAlign: TextAlign.right,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Expanded _buildColumNumbers({required List<String> listText}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          for (String text in listText)
            CustomButtonNumber(
              text: text,
              onTap: (text) => onClickButton(text),
            ),
        ],
      ),
    );
  }
}
