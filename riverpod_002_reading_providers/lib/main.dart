import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_002_reading_providers/state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Reading Providers',
        home: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
          child: TodoScreen(),
        ),
      ),
    );
  }
}

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

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
                .headline3!
                .copyWith(color: Colors.white),
          ),
          actions: [
            _Menu(),
          ],
          bottom: TabBar(
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
        body: SafeArea(
          child: TabBarView(
            children: [
              Column(
                children: [
                  AddTodoPanel(),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    // Method 1
                    child: Consumer(
                      builder: (context, ref, child) {
                        return ListView(
                          children: [
                            ...ref
                                .watch(todosProvider)
                                .map(
                                  (todo) => ProviderScope(
                                    overrides: [
                                      _currentTodo.overrideWithValue(todo)
                                    ],
                                    child: const TodoItem(),
                                  ),
                                )
                                .toList()
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
              // Method 1
              Consumer(
                builder: (context, ref, child) {
                  return ListView(
                    children: [
                      ...ref
                          .watch(completedTodos)
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final _currentTodo = Provider<Todo>((ref) => throw UnimplementedError());

class TodoItem extends StatefulWidget {
  const TodoItem({
    Key? key,
  }) : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  late TextEditingController _textEditingController;
  late FocusNode _textFocusNode;

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
    // Method 1
    return Consumer(
      builder: (context, ref, select) {
        final todo = ref.watch(_currentTodo);
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Dismissible(
            key: UniqueKey(),
            background: Container(color: Colors.red),
            onDismissed: (_) {
              // Method 3
              ref.read(todosProvider).remove(todo.id);
            },
            child: FocusScope(
              child: Focus(
                onFocusChange: (isFocused) {
                  if (!isFocused) {
                    setState(() {
                      hasFocus = false;
                    });
                    // Method 3
                    ref.read(todosProvider.notifier).edit(
                        id: todo.id, description: _textEditingController.text);
                  } else {
                    _textEditingController.text = todo.description;
                    _textEditingController.selection =
                        TextSelection.fromPosition(TextPosition(
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
                          // Method 3
                          ref.read(todosProvider.notifier).toggle(todo.id);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          // Method 3
                          ref.read(todosProvider.notifier).remove(todo.id);
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

// Method 2
class _Menu extends ConsumerWidget {
  const _Menu({Key? key}) : super(key: key);

  Future<void> onSelected(WidgetRef ref, _MenuOptions result) async {
    if (result == _MenuOptions.deleteOnComplete) {
      // Method 3
      final currentSetting = ref.read(settingsProvider).state.deleteOnComplete;
      ref.read(settingsProvider).state =
          Settings(deleteOnComplete: !currentSetting);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isChecked = ref.watch(settingsProvider).state.deleteOnComplete;
    return PopupMenuButton<_MenuOptions>(
      onSelected: (result) {
        onSelected(ref, result);
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
              Text('Delete on complete'),
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

class AddTodoPanel extends ConsumerStatefulWidget {
  const AddTodoPanel({Key? key}) : super(key: key);

  @override
  _AddTodoPanelState createState() => _AddTodoPanelState();
}

class _AddTodoPanelState extends ConsumerState<AddTodoPanel> {
  TextEditingController _textEditingController = TextEditingController();

  void _submit([String? value]) {
    // Method 3
    ref.read(todosProvider.notifier).add(_textEditingController.value.text);
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
              decoration: InputDecoration(hintText: 'New todo'),
              onSubmitted: _submit,
            ),
          ),
          IconButton(
            icon: Icon(Icons.check),
            onPressed: _submit,
          ),
        ],
      ),
    );
  }
}
