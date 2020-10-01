import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:riverpod_counter_app_three_ways/pages/counter_change_notifier_page.dart';
import 'package:riverpod_counter_app_three_ways/pages/counter_state_notifier_page.dart';
import 'package:riverpod_counter_app_three_ways/pages/counter_state_provider_page.dart';

const changeNotifierRoute = 'changeNotifier';
const stateNotifierRoute = 'stateNotifier';
const stateProviderRoute = 'stateProvider';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Enable Riverpod for the entire applications
    return ProviderScope(
      child: MaterialApp(
        title: 'Material App',
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          changeNotifierRoute: (context) => CounterChangeNotifierPage(),
          stateNotifierRoute: (context) => CounterStateNotifierPage(),
          stateProviderRoute: (context) => CounterStateProviderPage(),
        },
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, changeNotifierRoute);
              },
              child: Text('Change Notifier'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, stateNotifierRoute);
              },
              child: Text('State Notifier'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, stateProviderRoute);
              },
              child: Text('State Provider'),
            ),
          ],
        ),
      ),
    );
  }
}
