import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/feature/counter/counter_repository.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(this._counterRepo) : super(_counterRepo.readCounter());

  final CounterRepository _counterRepo;

  void increment() {
    _counterRepo.persistCounter(state + 1);
    emit(state + 1);
  }

  void decrement() {
    _counterRepo.persistCounter(state - 1);
    emit(state - 1);
  }
}
