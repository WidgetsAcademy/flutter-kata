// ignore_for_file: library_private_types_in_public_api

import 'package:calculator/feature/calculator/widgets.dart';
import 'package:flutter/material.dart';

/// The view of the calculator
/// If a user wants to use the calculator, this is the widget they should use
/// No other dependencies should be needed
class CalculatorView extends StatefulWidget {
  /// The view of the calculator
  const CalculatorView({super.key});

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Center(
// A Column Widget that contains the display and the keypad
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
// A Text Widget that displays the current number
            Text(
              '0',
              style: Theme.of(context).textTheme.displayLarge,
            ),
// A Row Widget that contains the keypad
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
// A Column Widget that contains the first row of buttons
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
// A Row Widget that contains the first row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(
                          text: '7',
                          onPressed: () {},
                        ),
                        Button(
                          text: '8',
                          onPressed: () {},
                        ),
                        Button(
                          text: '9',
                          onPressed: () {},
                        ),
                      ],
                    ),
// A Row Widget that contains the second row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(
                          text: '4',
                          onPressed: () {},
                        ),
                        Button(
                          text: '5',
                          onPressed: () {},
                        ),
                        Button(
                          text: '6',
                          onPressed: () {},
                        ),
                      ],
                    ),
// A Row Widget that contains the third row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(
                          text: '1',
                          onPressed: () {},
                        ),
                        Button(
                          text: '2',
                          onPressed: () {},
                        ),
                        Button(
                          text: '3',
                          onPressed: () {},
                        ),
                      ],
                    ),
// A Row Widget that contains the fourth row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(
                          text: '0',
                          onPressed: () {},
                        ),
                        Button(
                          text: '.',
                          onPressed: () {},
                        ),
                        Button(
                          text: '+/-',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
// A Column Widget that contains the second row of buttons
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Button(
                      text: '+',
                      onPressed: () {},
                    ),
                    Button(
                      text: '-',
                      onPressed: () {},
                    ),
                    Button(
                      text: '*',
                      onPressed: () {},
                    ),
                    Button(
                      text: '/',
                      onPressed: () {},
                    ),
                    Button(
                      text: '=',
                      onPressed: () {},
                    ),
                    Button(
                      text: 'C',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
