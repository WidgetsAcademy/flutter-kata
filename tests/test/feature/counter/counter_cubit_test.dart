import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tests/feature/counter/counter_cubit.dart';
import 'package:tests/feature/counter/counter_repository.dart';

class MockCounterRepository extends Mock implements CounterRepository {}

void main() {
  late CounterRepository mockCounterRepository;
  blocTest<CounterCubit, int>(
    'emits [1] when increment is called',
    setUp: () {
      mockCounterRepository = MockCounterRepository();
      when(mockCounterRepository.readCounter).thenReturn(0);
      when(() => mockCounterRepository.persistCounter(any()))
          .thenReturn((_) {});
    },
    build: () {
      return CounterCubit(mockCounterRepository);
    },
    act: (cubit) => cubit.increment(),
    expect: () => [1],
    verify: (_) {
      verify(() => mockCounterRepository.readCounter()).called(1);
      verify(() => mockCounterRepository.persistCounter(1)).called(1);
    },
  );

  // TODO add more tests
}
