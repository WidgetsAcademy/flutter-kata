import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tests/feature/counter/counter_cubit.dart';
import 'package:tests/feature/counter/counter_repository.dart';

/// Counter Page Widget which uses the [CounterCubit].
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(context.read<CounterRepository>()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(title: const Text('Counter')),
          body: Center(
            child: BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text(
                  '$state',
                  style: Theme.of(context).textTheme.displayLarge,
                );
              },
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: FloatingActionButton(
                  onPressed: () => context.read<CounterCubit>().increment(),
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ),
              FloatingActionButton(
                onPressed: () => context.read<CounterCubit>().decrement(),
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      }),
    );
  }
}
