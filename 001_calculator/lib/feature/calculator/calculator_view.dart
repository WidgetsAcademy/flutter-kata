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
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CalculatorCubit>(
      create: (context) => CalculatorCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Center(
// A Column Widget that contains the display and the keypad
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
// A Text Widget that displays the current number
              const _CalculatorDisplay(),
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
                        children: const <Widget>[
                          _CalcButton(text: '7'),
                          _CalcButton(text: '8'),
                          _CalcButton(text: '9'),
                        ],
                      ),
// A Row Widget that contains the second row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          _CalcButton(text: '4'),
                          _CalcButton(text: '5'),
                          _CalcButton(text: '6'),
                        ],
                      ),
// A Row Widget that contains the third row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          _CalcButton(text: '1'),
                          _CalcButton(text: '2'),
                          _CalcButton(text: '3'),
                        ],
                      ),
// A Row Widget that contains the fourth row of buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          _CalcButton(text: '0'),
                          _CalcButton(text: '.'),
                          _CalcButton(text: '+/-'),
                        ],
                      ),
                    ],
                  ),
// A Column Widget that contains the second row of buttons
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      _CalcButton(
                        text: '+',
                      ),
                      _CalcButton(
                        text: '-',
                      ),
                      _CalcButton(
                        text: '*',
                      ),
                      _CalcButton(
                        text: '/',
                      ),
                      _CalcButton(
                        text: '^',
                      ),
                      _CalcButton(
                        text: '=',
                      ),
                      _CalcButton(
                        text: 'C',
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Counter display widget
class _CalculatorDisplay extends StatefulWidget {
  /// Contructor
  const _CalculatorDisplay({super.key});

  @override
  State<_CalculatorDisplay> createState() => _CalculatorDisplayState();
}

class _CalculatorDisplayState extends State<_CalculatorDisplay> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorCubit, CalculatorState>(
        builder: (context, state) {
      return Text(
        key: const ValueKey('CalculatorDisplay'),
        state.display,
        style: Theme.of(context).textTheme.displayLarge,
      );
    });
  }
}

/// lala
class _CalcButton extends StatelessWidget {
  /// lala
  const _CalcButton({super.key, required this.text});

  /// lala
  final String text;

  @override
  Widget build(BuildContext context) {
    return Button(
      key: ValueKey(text),
      text: text,
      onPressed: (text) =>
          context.read<CalculatorCubit>().doSomethingWithKey(text),
    );
  }
}
