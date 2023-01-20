import 'package:calculator/feature/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A simple button widget
class Button extends StatelessWidget {
  /// A simple button widget
  const Button({
    super.key,
    required this.text,
    required this.onPressed,
  });

  /// The text that should be displayed on the button
  final String text;

  /// The callback that should be called when the button is pressed
  final void Function(String) onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: () => onPressed(text),
        child: Text(text),
      ),
    );
  }
}

/// Counter display widget
class CalculatorDisplay extends StatefulWidget {
  /// Contructor
  const CalculatorDisplay({super.key});

  @override
  State<CalculatorDisplay> createState() => _CalculatorDisplayState();
}

class _CalculatorDisplayState extends State<CalculatorDisplay> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorCubit, CalculatorState>(
        builder: (context, state) {
      return Text(
        state.getDisplay(),
        style: Theme.of(context).textTheme.displayLarge,
      );
    });
  }
}
