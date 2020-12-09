import 'dart:math';

import '../models/todo.dart';
import 'todo_repository.dart';

final _sampleTodos = [
  Todo('Buy cat food'),
  Todo('Learn Riverpod'),
];

class TodoException implements Exception {
  const TodoException(this.error);

  final String error;

  @override
  String toString() {
    return '''
Todo Error: $error
    ''';
  }
}

const double errorLikelihood = 0.4;

class FakeTodoRepository implements TodoRepository {
  FakeTodoRepository() : random = Random() {
    mockTodoStorage = [..._sampleTodos];
  }

  List<Todo> mockTodoStorage;
  final Random random;

  @override
  Future<List<Todo>> retrieveTodos() async {
    await _waitRandomTime();
    // retrieving mock storage
    if (random.nextDouble() < 0.3) {
      throw const TodoException('Todos could not be retrieved');
    } else {
      return mockTodoStorage;
    }
  }

  @override
  Future<void> addTodo(String description) async {
    await _waitRandomTime();
    // updating mock storage
    if (random.nextDouble() < errorLikelihood) {
      throw const TodoException('Todo could not be added');
    } else {
      mockTodoStorage = [...mockTodoStorage]..add(Todo(description));
    }
  }

  @override
  Future<void> remove(String id) async {
    await _waitRandomTime();
    // updating mock storage
    if (random.nextDouble() < errorLikelihood) {
      throw const TodoException('Todo could not be removed');
    } else {
      mockTodoStorage =
          mockTodoStorage.where((element) => element.id != id).toList();
    }
  }

  @override
  Future<void> edit({String id, String description}) async {
    await _waitRandomTime();
    // updating mock storage
    if (random.nextDouble() < errorLikelihood) {
      throw const TodoException('Could not update todo');
    } else {
      mockTodoStorage = [
        for (final todo in mockTodoStorage)
          if (todo.id == id)
            Todo(
              description,
              id: todo.id,
              completed: todo.completed,
            )
          else
            todo,
      ];
    }
  }

  @override
  Future<void> toggle(String id) async {
    await _waitRandomTime();
    // updating mock storage
    if (random.nextDouble() < errorLikelihood) {
      throw const TodoException('Todo could not be toggled');
    } else {
      mockTodoStorage = mockTodoStorage.map((todo) {
        if (todo.id == id) {
          return Todo(
            todo.description,
            id: todo.id,
            completed: !todo.completed,
          );
        }
        return todo;
      }).toList();
    }
  }

  Future<void> _waitRandomTime() async {
    await Future.delayed(
      Duration(seconds: random.nextInt(3)),
      () {},
    ); // simulate loading
  }
}
