import 'package:meta/meta.dart';

@immutable
class Settings {
  const Settings({this.deleteOnComplete = false});

  final bool deleteOnComplete;
}
