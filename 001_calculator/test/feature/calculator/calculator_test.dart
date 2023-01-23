import 'package:calculator/feature/calculator/calculator.dart';
import 'package:calculator/feature/calculator/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    WidgetsBinding.instance.renderView.configuration = TestViewConfiguration(size: const Size(1200.0, 1980.0));
  });

  testWidgets('Calculator should have all the buttons', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CalculatorView()));

    // we have the button with 0 and the initial result which is 0
    expect(find.text('0'), findsNWidgets(2));

    // check if all numbers are there
    for (var i = 1; i < 10; i++) {
      expect(find.text('$i'), findsOneWidget);
    }

    final buttons = ['+', '-', '*', '/',  '^', '=', 'C', '+/-', '.'];

    // check if all buttons are there
    for (final button in buttons) {
      expect(find.text(button), findsOneWidget);
    }
  });


  testWidgets('Calculator should calc 1+1=2', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CalculatorView()));
    final one = find.byKey(const ValueKey('1'));
    final plus = find.byKey(const ValueKey('+'));
    final equalsText = find.byKey(const ValueKey('='));

    final display = find.byKey(const ValueKey('CalculatorDisplay'));

    await tester.tap(one);
    await tester.pump();

    var displayWidget = display.evaluate().first.widget as Text;
    expect(displayWidget.data, equals('1'));
    await tester.tap(plus);
    await tester.tap(one);
    await tester.tap(equalsText);

    await tester.pump();

    displayWidget = display.evaluate().first.widget as Text;
    expect(displayWidget.data, equals('2.0'));
  });
}
