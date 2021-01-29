import 'package:freezed_annotation/freezed_annotation.dart';
part 'exceptions.freezed.dart';

@freezed
abstract class TodoFailure with _$TodoFailure {
  const factory TodoFailure.retrieveFailure({
    @Default('Error retrieving todos') String description,
  }) = RetrieveTodoFailure;
  const factory TodoFailure.addFailure({
    @Default('Error adding todo') String description,
  }) = AddTodoFailure;
  const factory TodoFailure.removeFailure({
    @Default('Error removing todo') String description,
  }) = RemoveTodoFailure;
  const factory TodoFailure.editFailure({
    @Default('Error editing todo') String description,
  }) = EditTodoFailure;
  const factory TodoFailure.toggleFailure({
    @Default('Error toggling todo') String description,
  }) = ToggleTodoFailure;
}

class TodoException implements Exception {
  TodoException({@required this.failure});

  final TodoFailure failure;

  @override
  String toString() {
    return '''
Todo Error: ${failure?.toString()}
    ''';
  }
}
