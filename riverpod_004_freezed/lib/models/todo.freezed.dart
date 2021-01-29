// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

// ignore: unused_element
  _Todo call(
      {@required String description,
      @required String id,
      bool completed = false}) {
    return _Todo(
      description: description,
      id: id,
      completed: completed,
    );
  }

// ignore: unused_element
  Todo fromJson(Map<String, Object> json) {
    return Todo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  String get description;
  String get id;
  bool get completed;

  Map<String, dynamic> toJson();
  $TodoCopyWith<Todo> get copyWith;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({String description, String id, bool completed});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object description = freezed,
    Object id = freezed,
    Object completed = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
      id: id == freezed ? _value.id : id as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({String description, String id, bool completed});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object description = freezed,
    Object id = freezed,
    Object completed = freezed,
  }) {
    return _then(_Todo(
      description:
          description == freezed ? _value.description : description as String,
      id: id == freezed ? _value.id : id as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Todo implements _Todo {
  const _$_Todo(
      {@required this.description, @required this.id, this.completed = false})
      : assert(description != null),
        assert(id != null),
        assert(completed != null);

  factory _$_Todo.fromJson(Map<String, dynamic> json) =>
      _$_$_TodoFromJson(json);

  @override
  final String description;
  @override
  final String id;
  @JsonKey(defaultValue: false)
  @override
  final bool completed;

  @override
  String toString() {
    return 'Todo(description: $description, id: $id, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todo &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(completed);

  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TodoToJson(this);
  }
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {@required String description,
      @required String id,
      bool completed}) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  String get description;
  @override
  String get id;
  @override
  bool get completed;
  @override
  _$TodoCopyWith<_Todo> get copyWith;
}

/// @nodoc
class _$TodosTearOff {
  const _$TodosTearOff();

// ignore: unused_element
  TodosData data(List<Todo> todos) {
    return TodosData(
      todos,
    );
  }

// ignore: unused_element
  TodosLoading loading() {
    return const TodosLoading();
  }

// ignore: unused_element
  TodosError error(Object error, StackTrace st) {
    return TodosError(
      error,
      st,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Todos = _$TodosTearOff();

/// @nodoc
mixin _$Todos {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Todo> todos),
    @required TResult loading(),
    @required TResult error(Object error, StackTrace st),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Todo> todos),
    TResult loading(),
    TResult error(Object error, StackTrace st),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(TodosData value),
    @required TResult loading(TodosLoading value),
    @required TResult error(TodosError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(TodosData value),
    TResult loading(TodosLoading value),
    TResult error(TodosError value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TodosCopyWith<$Res> {
  factory $TodosCopyWith(Todos value, $Res Function(Todos) then) =
      _$TodosCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosCopyWithImpl<$Res> implements $TodosCopyWith<$Res> {
  _$TodosCopyWithImpl(this._value, this._then);

  final Todos _value;
  // ignore: unused_field
  final $Res Function(Todos) _then;
}

/// @nodoc
abstract class $TodosDataCopyWith<$Res> {
  factory $TodosDataCopyWith(TodosData value, $Res Function(TodosData) then) =
      _$TodosDataCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodosDataCopyWithImpl<$Res> extends _$TodosCopyWithImpl<$Res>
    implements $TodosDataCopyWith<$Res> {
  _$TodosDataCopyWithImpl(TodosData _value, $Res Function(TodosData) _then)
      : super(_value, (v) => _then(v as TodosData));

  @override
  TodosData get _value => super._value as TodosData;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(TodosData(
      todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
class _$TodosData implements TodosData {
  const _$TodosData(this.todos) : assert(todos != null);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'Todos.data(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TodosData &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @override
  $TodosDataCopyWith<TodosData> get copyWith =>
      _$TodosDataCopyWithImpl<TodosData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Todo> todos),
    @required TResult loading(),
    @required TResult error(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return data(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Todo> todos),
    TResult loading(),
    TResult error(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(TodosData value),
    @required TResult loading(TodosLoading value),
    @required TResult error(TodosError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(TodosData value),
    TResult loading(TodosLoading value),
    TResult error(TodosError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class TodosData implements Todos {
  const factory TodosData(List<Todo> todos) = _$TodosData;

  List<Todo> get todos;
  $TodosDataCopyWith<TodosData> get copyWith;
}

/// @nodoc
abstract class $TodosLoadingCopyWith<$Res> {
  factory $TodosLoadingCopyWith(
          TodosLoading value, $Res Function(TodosLoading) then) =
      _$TodosLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodosLoadingCopyWithImpl<$Res> extends _$TodosCopyWithImpl<$Res>
    implements $TodosLoadingCopyWith<$Res> {
  _$TodosLoadingCopyWithImpl(
      TodosLoading _value, $Res Function(TodosLoading) _then)
      : super(_value, (v) => _then(v as TodosLoading));

  @override
  TodosLoading get _value => super._value as TodosLoading;
}

/// @nodoc
class _$TodosLoading implements TodosLoading {
  const _$TodosLoading();

  @override
  String toString() {
    return 'Todos.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TodosLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Todo> todos),
    @required TResult loading(),
    @required TResult error(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Todo> todos),
    TResult loading(),
    TResult error(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(TodosData value),
    @required TResult loading(TodosLoading value),
    @required TResult error(TodosError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(TodosData value),
    TResult loading(TodosLoading value),
    TResult error(TodosError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodosLoading implements Todos {
  const factory TodosLoading() = _$TodosLoading;
}

/// @nodoc
abstract class $TodosErrorCopyWith<$Res> {
  factory $TodosErrorCopyWith(
          TodosError value, $Res Function(TodosError) then) =
      _$TodosErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace st});
}

/// @nodoc
class _$TodosErrorCopyWithImpl<$Res> extends _$TodosCopyWithImpl<$Res>
    implements $TodosErrorCopyWith<$Res> {
  _$TodosErrorCopyWithImpl(TodosError _value, $Res Function(TodosError) _then)
      : super(_value, (v) => _then(v as TodosError));

  @override
  TodosError get _value => super._value as TodosError;

  @override
  $Res call({
    Object error = freezed,
    Object st = freezed,
  }) {
    return _then(TodosError(
      error == freezed ? _value.error : error,
      st == freezed ? _value.st : st as StackTrace,
    ));
  }
}

/// @nodoc
class _$TodosError implements TodosError {
  const _$TodosError(this.error, this.st)
      : assert(error != null),
        assert(st != null);

  @override
  final Object error;
  @override
  final StackTrace st;

  @override
  String toString() {
    return 'Todos.error(error: $error, st: $st)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TodosError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.st, st) ||
                const DeepCollectionEquality().equals(other.st, st)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(st);

  @override
  $TodosErrorCopyWith<TodosError> get copyWith =>
      _$TodosErrorCopyWithImpl<TodosError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult data(List<Todo> todos),
    @required TResult loading(),
    @required TResult error(Object error, StackTrace st),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return error(this.error, st);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult data(List<Todo> todos),
    TResult loading(),
    TResult error(Object error, StackTrace st),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error, st);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult data(TodosData value),
    @required TResult loading(TodosLoading value),
    @required TResult error(TodosError value),
  }) {
    assert(data != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult data(TodosData value),
    TResult loading(TodosLoading value),
    TResult error(TodosError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TodosError implements Todos {
  const factory TodosError(Object error, StackTrace st) = _$TodosError;

  Object get error;
  StackTrace get st;
  $TodosErrorCopyWith<TodosError> get copyWith;
}
