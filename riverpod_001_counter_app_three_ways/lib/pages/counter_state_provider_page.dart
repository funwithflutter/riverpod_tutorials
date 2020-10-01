import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

final _counterProvider = StateProvider<int>((ref) => 0);

final _isEvenProvider = Provider<bool>((ref) {
  final counter = ref.watch(_counterProvider);
  return (counter.state % 2 == 0);
});

class CounterStateProviderPage extends ConsumerWidget {
  const CounterStateProviderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(_counterProvider).state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Provider Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Count: $counter'),
            CounterIsEven(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read(_counterProvider).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterIsEven extends ConsumerWidget {
  const CounterIsEven({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isEven = watch(_isEvenProvider);
    return Text(isEven ? 'Is even' : 'Not even');
  }
}
