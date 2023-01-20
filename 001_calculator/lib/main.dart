import 'package:calculator/feature/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const CalculatorApp());

/// The main widget of the app
class CalculatorApp extends StatelessWidget {
  /// The main widget of the app
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorView()
    );
  }
}
