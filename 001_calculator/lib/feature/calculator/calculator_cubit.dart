import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:function_tree/function_tree.dart';

/// The state of the calculator
abstract class CalculatorState {
  // TODO(dkbast): implement state
  /// display impl.
  String getDisplay();
}

/// The reset state
class ResetState extends CalculatorState {
  @override
  String getDisplay() {
    return '0';
  }
}

/// The display update state
class UpdateDisplayState extends CalculatorState {
  /// Constructor
  UpdateDisplayState({required this.display});

  /// Display property
  final String display;

  @override
  String getDisplay() {
    return display;
  }
}

/// The reset state
class DivideByZeroState extends CalculatorState {
  @override
  String getDisplay() {
    return 'ERROR / 0';
  }
}

/// The business logic of the calculator
class CalculatorCubit extends Cubit<CalculatorState> {
  /// The business logic of the calculator
  CalculatorCubit() : super(ResetState());

  /// number
  String number = '0';

  // TODO(dkbast): implement cubit
  /// do something
  void doSomethingWithKey(String key) {
    switch (key) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '.':
        addNumber(key);
        break;
      case 'C':
        resetDisplay();
        break;
      case '+':
      case '-':
      case '/':
      case '*':
      case '^':
        addOperator(key);
        break;
      case '=':
        calculateStuff(key);
        break;
      case '+/-':
        toggleSign();
        break;
      default:
        break;
    }
  }

  void _updateDisplayState() {
    emit(UpdateDisplayState(display: number));
  }

  /// lala
  void toggleSign() {
    if (number.startsWith('-')) {
      number = number.replaceFirst('-', '');
    } else {
      number = '-$number';
    }
    _updateDisplayState();
  }

  /// Adds number i swear
  void addNumber(String number) {
    if (this.number == '0' && number == '0') {
      return;
    }

    if (this.number == '0') {
      this.number = number;
    } else {
      this.number += number;
    }
    _updateDisplayState();
  }

  /// lala
  void calculateStuff(String operator) {
    number = number.interpret().toString();
    _updateDisplayState();
  }

  /// Lala
  void addOperator(String operator) {
    number += operator;
    _updateDisplayState();
  }

  /// resets display
  void resetDisplay() {
    number = '0';
    emit(ResetState());
  }
}
