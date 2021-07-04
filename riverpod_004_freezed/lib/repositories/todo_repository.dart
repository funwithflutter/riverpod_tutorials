import '../models/models.dart';

abstract class TodoRepository {
  Future<List<Todo>> retrieveTodos();
  Future<void> addTodo(String description);
  Future<void> toggle(String id);
  Future<void> edit({
    required String id,
    required String description,
  });
  Future<void> remove(String id);
}
