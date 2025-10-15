import 'package:flutter/material.dart';

import 'custom_widget.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String output = '0';
  String input = '0';
  String operation = '';
  double num1 = 0;
  double num2 = 0;

  void buttonPressed(String value) {
    print('value= $value');

    // if (value == 'C') {
    //   output = '0';
    //   input = '0';
    //   operation = '';
    //   num1 = 0;
    //   num2 = 0;
    // } else if (value == '=') {
    //   num2 = double.parse(input);
    //   if (operation == '+') {
    //     output = (num1 + num2).toString();
    //   } else if (operation == '-') {
    //     output = (num1 - num2).toString();
    //   } else if (operation == 'x') {
    //     output = (num1 * num2).toString();
    //   } else if (operation == '÷') {
    //     output = (num1 / num2).toString();
    //   }
    // }

    setState(() {
      if (value == 'C') {
        output = '0';
        input = '0';
        operation = '';
        num1 = 0;
        num2 = 0;
      } else if (value == '+' || value == '-' || value == 'x' || value == '÷') {
        num1 = double.tryParse(input)!;
        operation = value;
        input = '0';
      } else if (value == '=') {
        num2 = double.parse(input);
        if (operation == '+') {
          output = (num1 + num2).toString();
        } else if (operation == '-') {
          output = (num1 - num2).toString();
        } else if (operation == 'x') {
          output = (num1 * num2).toString();
        } else if (operation == '÷') {
          output = (num1 / num2).toString();
        }
        input = output;
        operation = '';
      } else {
        if (input == '0') {
          input = value;
        } else {
          input += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      output,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '$num1 $operation $input',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                buttonWidget(
                  onPressed: () => buttonPressed('7'),
                  text: '7',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('8'),
                  text: '8',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('9'),
                  text: '9',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('÷'),
                  text: '÷',
                  buttonColor: Colors.orangeAccent,
                ),
              ],
            ),
            Row(
              children: [
                buttonWidget(
                  onPressed: () => buttonPressed('4'),
                  text: '4',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('5'),
                  text: '5',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('6'),
                  text: '6',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('x'),
                  text: 'x',
                  buttonColor: Colors.orangeAccent,
                ),
              ],
            ),
            Row(
              children: [
                buttonWidget(
                  onPressed: () => buttonPressed('1'),
                  text: '1',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('2'),
                  text: '2',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('3'),
                  text: '3',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('-'),
                  text: '-',
                  buttonColor: Colors.orangeAccent,
                ),
              ],
            ),
            Row(
              children: [
                buttonWidget(
                  onPressed: () => buttonPressed('C'),
                  text: 'C',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('0'),
                  text: '0',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('='),
                  text: '=',
                  buttonColor: Colors.grey,
                ),
                buttonWidget(
                  onPressed: () => buttonPressed('+'),
                  text: '+',
                  buttonColor: Colors.orangeAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
