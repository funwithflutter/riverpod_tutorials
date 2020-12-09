import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_003_async_value/repositories/fake_todo_repository.dart';
import 'package:riverpod_003_async_value/todo_state.dart';

import 'models/models.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      // Overriding for testing
      overrides: [
        todoRepositoryProvider.overrideWithValue(FakeTodoRepository())
      ],
      child: MaterialApp(
        title: 'Reading Providers',
        home: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus.unfocus(),
          child: const TodoScreen(),
        ),
      ),
    );
  }
}

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'TODOS',
            style: Theme.of(context)
                .textTheme
                .headline3
                .copyWith(color: Colors.white),
          ),
          actions: [
            const _Menu(),
          ],
          bottom: const TabBar(
            tabs: [
              Text(
                'All',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Completed',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: ProviderListener(
          provider: todoExceptionProvider,
          onChange: (
            BuildContext context,
            StateController<TodoException> exceptionState,
          ) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  exceptionState.state.error.toString(),
                ),
              ),
            );
          },
          child: SafeArea(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    const AddTodoPanel(),
                    const SizedBox(
                      height: 20,
                    ),
                    const _TodoList(),
                  ],
                ),
                const _CompletedTodos(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TodoList extends StatefulWidget {
  const _TodoList({Key key}) : super(key: key);

  @override
  __TodoListState createState() => __TodoListState();
}

class __TodoListState extends State<_TodoList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer(
        builder: (context, watch, child) {
          final todosState = watch(todosNotifierProvider.state);
          return todosState.when(
            data: (todos) {
              return RefreshIndicator(
                onRefresh: () {
                  return context.read(todosNotifierProvider).refresh();
                },
                child: ListView(
                  children: [
                    ...todos
                        .map(
                          (todo) => ProviderScope(
                            overrides: [_currentTodo.overrideWithValue(todo)],
                            child: const TodoItem(),
                          ),
                        )
                        .toList()
                  ],
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (e, st) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Todos could not be loaded'),
                  RaisedButton(
                    onPressed: () {
                      context.read(todosNotifierProvider).retryLoadingTodo();
                    },
                    child: const Text('Retry'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CompletedTodos extends StatelessWidget {
  const _CompletedTodos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        final todosState = watch(completedTodosProvider);
        return todosState.when(
          data: (todos) {
            return ListView(
              children: [
                ...todos
                    .map(
                      (todo) => ProviderScope(
                        overrides: [_currentTodo.overrideWithValue(todo)],
                        child: const TodoItem(),
                      ),
                    )
                    .toList()
              ],
            );
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (e, st) => const Center(
            child: Text('Something went wrong'),
          ),
        );
      },
    );
  }
}

final _currentTodo = ScopedProvider<Todo>(null);

class TodoItem extends StatefulWidget {
  const TodoItem({
    Key key,
  }) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  TextEditingController _textEditingController;
  FocusNode _textFocusNode;

  bool hasFocus = false;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    _textFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, select) {
        final todo = watch(_currentTodo);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Dismissible(
            key: UniqueKey(),
            background: Container(color: Colors.red),
            onDismissed: (_) {
              context.read(todosNotifierProvider).remove(todo.id);
            },
            child: FocusScope(
              child: Focus(
                onFocusChange: (isFocused) {
                  if (!isFocused) {
                    setState(() {
                      hasFocus = false;
                    });
                    context.read(todosNotifierProvider).edit(
                        id: todo.id, description: _textEditingController.text);
                  } else {
                    _textEditingController
                      ..text = todo.description
                      ..selection = TextSelection.fromPosition(TextPosition(
                          offset: _textEditingController.text.length));
                  }
                },
                child: ListTile(
                  onTap: () {
                    setState(() {
                      hasFocus = true;
                    });
                    _textFocusNode.requestFocus();
                  },
                  title: hasFocus
                      ? TextField(
                          focusNode: _textFocusNode,
                          controller: _textEditingController,
                        )
                      : Text(todo.description),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: todo.completed,
                        onChanged: (_) {
                          context.read(todosNotifierProvider).toggle(todo.id);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          context.read(todosNotifierProvider).remove(todo.id);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

enum _MenuOptions { deleteOnComplete }

class _Menu extends ConsumerWidget {
  const _Menu({Key key}) : super(key: key);

  Future<void> onSelected(BuildContext context, _MenuOptions result) async {
    if (result == _MenuOptions.deleteOnComplete) {
      final currentSetting =
          context.read(settingsProvider).state.deleteOnComplete;
      context.read(settingsProvider).state =
          Settings(deleteOnComplete: !currentSetting);
    }
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final isChecked = watch(settingsProvider).state.deleteOnComplete;
    return PopupMenuButton<_MenuOptions>(
      onSelected: (result) {
        onSelected(context, result);
      },
      icon: const Icon(
        Icons.menu,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<_MenuOptions>>[
        PopupMenuItem<_MenuOptions>(
          value: _MenuOptions.deleteOnComplete,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Delete on complete'),
              Checkbox(
                value: isChecked,
                onChanged: null,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class AddTodoPanel extends StatefulWidget {
  const AddTodoPanel({Key key}) : super(key: key);

  @override
  _AddTodoPanelState createState() => _AddTodoPanelState();
}

class _AddTodoPanelState extends State<AddTodoPanel> {
  final _textEditingController = TextEditingController();

  void _submit([String value]) {
    context.read(todosNotifierProvider).add(_textEditingController.value.text);
    _textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(hintText: 'New todo'),
              onSubmitted: _submit,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: _submit,
          ),
        ],
      ),
    );
  }
}
