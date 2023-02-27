/// An in memory database for the counter feature.
class CounterRepository {
  /// The current value of the counter.
  int _counter = 0;

  persistCounter(int value) {
    _counter = value;
  }

  int readCounter() => _counter;
}
