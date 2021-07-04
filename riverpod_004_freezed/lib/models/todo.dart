import 'package:uuid/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

var _uuid = const Uuid();

@freezed
class Todo with _$Todo {
  const factory Todo({
    required String description,
    required String id,
    @Default(false) bool completed,
  }) = _Todo;

  factory Todo.create(String description) {
    return Todo(
      description: description,
      id: _uuid.v4(),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}

@freezed
class Todos with _$Todos {
  const factory Todos.data(
    List<Todo> todos,
  ) = TodosData;
  const factory Todos.loading() = TodosLoading;
  const factory Todos.error(Object error, StackTrace st) = TodosError;
}
