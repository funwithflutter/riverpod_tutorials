import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _counterProvider = StateProvider<int>((ref) => 0);

final _isEvenProvider = Provider<bool>((ref) {
  final counter = ref.watch(_counterProvider);
  return (counter.state % 2 == 0);
});

class CounterStateProviderPage extends ConsumerWidget {
  const CounterStateProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(_counterProvider).state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Provider Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: $counter'),
            CounterIsEven(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(_counterProvider).state++,
        child: Icon(Icons.add),
      ),
    );
  }
}

class CounterIsEven extends ConsumerWidget {
  const CounterIsEven({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEven = ref.watch(_isEvenProvider);
    return Text(isEven ? 'Is even' : 'Not even');
  }
}
