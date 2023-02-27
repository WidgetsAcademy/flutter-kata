# tests

A new Flutter project.

## Getting Started

The goal of this project is to learn about mocking and testing in Flutter.

### Running the tests

To run the tests, run the following command

```bash
flutter test
```

#### Running the tests with coverage

To run the tests with coverage, run the following command

```bash
flutter test --coverage
```

#### Running the tests with coverage and generating a report and opening it

To run the tests with coverage and generating a report and opening it, run the following command

```bash
flutter test --coverage && genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html
```

## Tasks

- [ ] Add a test for the decrement method of the CounterCubit in counter_cubit_test.dart
- [ ] Add a widget test for the increment feature in counter_page_test.dart
- [ ] Add a widget test for the decrement feature in counter_page_test.dart
