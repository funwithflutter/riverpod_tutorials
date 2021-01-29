import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta/meta.dart';
import 'package:riverpod_004_freezed/repositories/todo_repository.dart';

import 'models/models.dart';
import 'repositories/exceptions.dart';

final settingsProvider = StateProvider<Settings>((ref) {
  return const Settings();
});

final todoRepositoryProvider = Provider<TodoRepository>((ref) {
  throw UnimplementedError();
});

final todosNotifierProvider = StateNotifierProvider<TodosNotifier>((ref) {
  return TodosNotifier(ref.read);
});

final completedTodosProvider = Provider<Todos>((ref) {
  final todosState = ref.watch(todosNotifierProvider.state);
  return todosState.when(
    data: (todos) => Todos.data(todos.where((todo) => todo.completed).toList()),
    loading: () => const Todos.loading(),
    error: (err, st) => Todos.error(err, st),
  );
});

final todoExceptionProvider = StateProvider<TodoException>((ref) {
  return null;
});

class TodosNotifier extends StateNotifier<Todos> {
  TodosNotifier(
    this.read, [
    Todos todos,
  ]) : super(todos ?? const Todos.loading()) {
    _retrieveTodos();
  }

  final Reader read;
  Todos previousState;

  Future<void> _retrieveTodos() async {
    try {
      final todos = await read(todoRepositoryProvider).retrieveTodos();
      state = Todos.data(todos);
    } on TodoException catch (e, st) {
      state = Todos.error(e, st);
    }
  }

  Future<void> retryLoadingTodo() async {
    state = const Todos.loading();
    try {
      final todos = await read(todoRepositoryProvider).retrieveTodos();
      state = Todos.data(todos);
    } on TodoException catch (e, st) {
      state = Todos.error(e, st);
    }
  }

  Future<void> refresh() async {
    try {
      final todos = await read(todoRepositoryProvider).retrieveTodos();
      state = Todos.data(todos);
    } catch (e, st) {
      state = Todos.error(e, st);
    }
  }

  Future<void> add(String description) async {
    _cacheState();
    state.maybeWhen(
      data: (todos) {
        state = Todos.data(todos..add(Todo.create(description)));
      },
      orElse: () {},
    );

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

    state.maybeWhen(
      data: (todos) {
        state = Todos.data(todos.map((todo) {
          if (todo.id == id)
            return todo.copyWith(completed: !todo.completed);
          else
            return todo;
        }).toList());
      },
      orElse: () {},
    );
    try {
      await read(todoRepositoryProvider).toggle(id);
    } on TodoException catch (e) {
      _handleException(e);
    }
  }

  Future<void> edit({@required String id, @required String description}) async {
    _cacheState();

    state.maybeWhen(
      data: (todos) {
        state = Todos.data([
          for (final todo in todos)
            if (todo.id == id) todo.copyWith(description: description) else todo
        ]);
      },
      orElse: () {},
    );

    try {
      await read(todoRepositoryProvider).edit(id: id, description: description);
    } on TodoException catch (e) {
      _handleException(e);
    }
  }

  Future<void> remove(String id) async {
    _cacheState();
    state.maybeWhen(
      data: (todos) {
        state = Todos.data(todos.where((todo) => todo.id != id).toList());
      },
      orElse: () {},
    );
    try {
      await read(todoRepositoryProvider).remove(id);
    } on TodoException catch (e) {
      _handleException(e);
    }
  }

  void _cacheState() {
    previousState = state;
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
