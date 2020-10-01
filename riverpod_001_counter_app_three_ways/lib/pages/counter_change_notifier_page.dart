import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

import '../notifiers.dart';

final _counterProvider = ChangeNotifierProvider<CounterChangeNotifier>((ref) {
  return CounterChangeNotifier();
});

class CounterChangeNotifierPage extends ConsumerWidget {
  const CounterChangeNotifierPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counter = watch(_counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Notifier Page'),
      ),
      body: Center(child: Text('Count: ${counter.count}')),
      floatingActionButton: MyFloatingButton(),
    );
  }
}

class MyFloatingButton extends StatelessWidget {
  const MyFloatingButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.read(_counterProvider).increment();
      },
      child: Icon(Icons.add),
    );
  }
}
