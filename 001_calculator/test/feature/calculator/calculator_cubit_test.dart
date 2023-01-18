import 'package:calculator/feature/calculator/calculator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('CalculatorCubit should be instantiatable', () {
    expect(CalculatorCubit(), isA<CalculatorCubit>());
  });
}
