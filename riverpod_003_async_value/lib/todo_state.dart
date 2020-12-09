import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:riverpod_003_async_value/repositories/fake_todo_repository.dart';
import 'package:riverpod_003_async_value/repositories/todo_repository.dart';

import 'models/models.dart';

final settingsProvider = StateProvider<Settings>((ref) {
  return const Settings();
});

final todoRepositoryProvider = Provider<TodoRepository>((ref) {
  throw UnimplementedError();
});

final todosNotifierProvider = StateNotifierProvider<TodosNotifier>((ref) {
  return TodosNotifier(ref.read);
});

final completedTodosProvider = Provider<AsyncValue<List<Todo>>>((ref) {
  final todosState = ref.watch(todosNotifierProvider.state);
  return todosState.whenData(
    (todos) => todos.where((todo) => todo.completed).toList(),
  );
});

final todoExceptionProvider = StateProvider<TodoException>((ref) {
  return null;
});

class TodosNotifier extends StateNotifier<AsyncValue<List<Todo>>> {
  TodosNotifier(
    this.read, [
    AsyncValue<List<Todo>> todos,
  ]) : super(todos ?? const AsyncValue.loading()) {
    _retrieveTodos();
  }

  final Reader read;
  AsyncValue<List<Todo>> previousState;

  Future<void> _retrieveTodos() async {
    try {
      final todos = await read(todoRepositoryProvider).retrieveTodos();
      state = AsyncValue.data(todos);
    } on TodoException catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> retryLoadingTodo() async {
    state = const AsyncValue.loading();
    try {
      final todos = await read(todoRepositoryProvider).retrieveTodos();
      state = AsyncValue.data(todos);
    } on TodoException catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> refresh() async {
    try {
      final todos = await read(todoRepositoryProvider).retrieveTodos();
      state = AsyncValue.data(todos);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> add(String description) async {
    _cacheState();
    state = state.whenData((value) => [...value]..add(Todo(description)));

    try {
      await read(todoRepositoryProvider).addTodo(description);
    } on TodoException catch (e) {
      _handleException(e);
    }
  }

  Future<void> toggle(String id) async {
    if (read(settingsProvider).state.deleteOnComplete) {
      await remove(id);
    }

    _cacheState();

    state = state.whenData(
      (value) => value.map((todo) {
        if (todo.id == id) {
          return Todo(
            todo.description,
            id: todo.id,
            completed: !todo.completed,
          );
        }
        return todo;
      }).toList(),
    );
    try {
      await read(todoRepositoryProvider).toggle(id);
    } on TodoException catch (e) {
      _handleException(e);
    }
  }

  Future<void> edit({@required String id, @required String description}) async {
    _cacheState();
    state = state.whenData((todos) {
      return [
        for (final todo in todos)
          if (todo.id == id)
            Todo(
              description,
              id: todo.id,
              completed: todo.completed,
            )
          else
            todo
      ];
    });

    try {
      await read(todoRepositoryProvider).edit(id: id, description: description);
    } on TodoException catch (e) {
      _handleException(e);
    }
  }

  Future<void> remove(String id) async {
    _cacheState();
    state = state.whenData(
      (value) => value.where((element) => element.id != id).toList(),
    );
    try {
      await read(todoRepositoryProvider).remove(id);
    } on TodoException catch (e) {
      _handleException(e);
    }
  }

  void _cacheState() {
    previousState = state.whenData((value) => value);
  }

  void _resetState() {
    if (previousState != null) {
      state = previousState;
      previousState = null;
    }
  }

  void _handleException(TodoException e) {
    _resetState();
    read(todoExceptionProvider).state = e;
  }
}
