import 'package:flutter/material.dart';


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