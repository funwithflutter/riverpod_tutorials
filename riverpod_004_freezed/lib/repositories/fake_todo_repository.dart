import 'dart:convert';
import 'dart:math';

import '../models/todo.dart';
import 'exceptions.dart';
import 'todo_repository.dart';

final _sampleJsonTodos = [
  '''{"description": "Buy cat food", "id": "ef902705-b65e-49bf-b723-cdcb4bfa7327", "completed": false}''',
  '''{"description": "Learn Riverpod", "id": "ef902705-b65e-49bf-b723-cdcb4bfa7329", "completed": true}''',
  '''{"description": "Play games", "id": "0704c57a-6901-40db-88dc-b22269af658b", "completed": false}''',
];

const double errorLikelihood = 0.00;

class FakeTodoRepository implements TodoRepository {
  FakeTodoRepository() : random = Random() {
    mockTodoStorage = [
      ..._sampleJsonTodos.map((todo) {
        return Todo.fromJson(json.decode(todo) as Map<String, dynamic>);
      })
    ];
  }

  late List<Todo> mockTodoStorage;
  late final Random random;

  @override
  Future<List<Todo>> retrieveTodos() async {
    await _waitRandomTime();
    // retrieving mock storage
    if (random.nextDouble() < 0.3) {
      throw const TodoException(failure: TodoFailure.retrieveFailure());
    } else {
      return mockTodoStorage;
    }
  }

  @override
  Future<void> addTodo(String description) async {
    await _waitRandomTime();
    // updating mock storage
    if (random.nextDouble() < errorLikelihood) {
      throw const TodoException(failure: TodoFailure.addFailure());
    } else {
      mockTodoStorage = [...mockTodoStorage, Todo.create(description)];
    }
  }

  @override
  Future<void> remove(String id) async {
    await _waitRandomTime();
    // updating mock storage
    if (random.nextDouble() < errorLikelihood) {
      throw const TodoException(failure: TodoFailure.removeFailure());
    } else {
      mockTodoStorage =
          mockTodoStorage.where((element) => element.id != id).toList();
    }
  }

  @override
  Future<void> edit({required String id, required String description}) async {
    await _waitRandomTime();
    // updating mock storage
    if (random.nextDouble() < errorLikelihood) {
      throw const TodoException(failure: TodoFailure.editFailure());
    } else {
      mockTodoStorage = [
        for (final todo in mockTodoStorage)
          if (todo.id == id)
            Todo(
              description: description,
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
      throw const TodoException(failure: TodoFailure.toggleFailure());
    } else {
      mockTodoStorage = mockTodoStorage.map((todo) {
        if (todo.id == id) {
          return Todo(
            description: todo.description,
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
