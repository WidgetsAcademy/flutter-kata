// ignore_for_file: library_private_types_in_public_api

import 'package:calculator/feature/calculator/calculator.dart';
import 'package:calculator/feature/calculator/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  void handlePressed(String text) {
    context.read<CalculatorCubit>().doSomethingWithKey(text);
  }

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
            const CalculatorDisplay(),
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
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '8',
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '9',
                          onPressed: handlePressed,
                        ),
                      ],
                    ),
// A Row Widget that contains the second row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(
                          text: '4',
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '5',
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '6',
                          onPressed: handlePressed,
                        ),
                      ],
                    ),
// A Row Widget that contains the third row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(
                          text: '1',
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '2',
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '3',
                          onPressed: handlePressed,
                        ),
                      ],
                    ),
// A Row Widget that contains the fourth row of buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Button(
                          text: '0',
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '.',
                          onPressed: handlePressed,
                        ),
                        Button(
                          text: '+/-',
                          onPressed: handlePressed,
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
                      onPressed: handlePressed,
                    ),
                    Button(
                      text: '-',
                      onPressed: handlePressed,
                    ),
                    Button(
                      text: '*',
                      onPressed: handlePressed,
                    ),
                    Button(
                      text: '/',
                      onPressed: handlePressed,
                    ),
                    Button(
                      text: '=',
                      onPressed: handlePressed,
                    ),
                    Button(
                      text: 'C',
                      onPressed: handlePressed,
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
