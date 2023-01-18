import 'package:calculator/feature/calculator/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Calculator should have all the buttons', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CalculatorView()));

    // we have the button with 0 and the initial result which is 0
    expect(find.text('0'), findsNWidgets(2));

    // check if all numbers are there
    for (var i = 1; i < 10; i++) {
      expect(find.text('$i'), findsOneWidget);
    }

    final buttons = ['+', '-', '*', '/', '=', 'C', '+/-', '.'];

    // check if all buttons are there
    for (final button in buttons) {
      expect(find.text(button), findsOneWidget);
    }
  });
}
