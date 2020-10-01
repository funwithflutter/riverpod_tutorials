import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import '../notifiers.dart';

final _counterProvider = StateNotifierProvider<CounterStateNotifier>((ref) {
  return CounterStateNotifier();
});

class CounterStateNotifierPage extends ConsumerWidget {
  const CounterStateNotifierPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(_counterProvider.state);
    return Scaffold(
      appBar: AppBar(
        title: Text('State Notifier Page'),
      ),
      body: Center(child: Text('Count: ${counter.count}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read(_counterProvider).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
