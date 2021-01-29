// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoFailureTearOff {
  const _$TodoFailureTearOff();

// ignore: unused_element
  RetrieveTodoFailure retrieveFailure(
      {String description = 'Error retrieving todos'}) {
    return RetrieveTodoFailure(
      description: description,
    );
  }

// ignore: unused_element
  AddTodoFailure addFailure({String description = 'Error adding todo'}) {
    return AddTodoFailure(
      description: description,
    );
  }

// ignore: unused_element
  RemoveTodoFailure removeFailure(
      {String description = 'Error removing todo'}) {
    return RemoveTodoFailure(
      description: description,
    );
  }

// ignore: unused_element
  EditTodoFailure editFailure({String description = 'Error editing todo'}) {
    return EditTodoFailure(
      description: description,
    );
  }

// ignore: unused_element
  ToggleTodoFailure toggleFailure(
      {String description = 'Error toggling todo'}) {
    return ToggleTodoFailure(
      description: description,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoFailure = _$TodoFailureTearOff();

/// @nodoc
mixin _$TodoFailure {
  String get description;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
    @required TResult toggleFailure(String description),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    TResult toggleFailure(String description),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveTodoFailure value),
    @required TResult addFailure(AddTodoFailure value),
    @required TResult removeFailure(RemoveTodoFailure value),
    @required TResult editFailure(EditTodoFailure value),
    @required TResult toggleFailure(ToggleTodoFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveTodoFailure value),
    TResult addFailure(AddTodoFailure value),
    TResult removeFailure(RemoveTodoFailure value),
    TResult editFailure(EditTodoFailure value),
    TResult toggleFailure(ToggleTodoFailure value),
    @required TResult orElse(),
  });

  $TodoFailureCopyWith<TodoFailure> get copyWith;
}

/// @nodoc
abstract class $TodoFailureCopyWith<$Res> {
  factory $TodoFailureCopyWith(
          TodoFailure value, $Res Function(TodoFailure) then) =
      _$TodoFailureCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class _$TodoFailureCopyWithImpl<$Res> implements $TodoFailureCopyWith<$Res> {
  _$TodoFailureCopyWithImpl(this._value, this._then);

  final TodoFailure _value;
  // ignore: unused_field
  final $Res Function(TodoFailure) _then;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class $RetrieveTodoFailureCopyWith<$Res>
    implements $TodoFailureCopyWith<$Res> {
  factory $RetrieveTodoFailureCopyWith(
          RetrieveTodoFailure value, $Res Function(RetrieveTodoFailure) then) =
      _$RetrieveTodoFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$RetrieveTodoFailureCopyWithImpl<$Res>
    extends _$TodoFailureCopyWithImpl<$Res>
    implements $RetrieveTodoFailureCopyWith<$Res> {
  _$RetrieveTodoFailureCopyWithImpl(
      RetrieveTodoFailure _value, $Res Function(RetrieveTodoFailure) _then)
      : super(_value, (v) => _then(v as RetrieveTodoFailure));

  @override
  RetrieveTodoFailure get _value => super._value as RetrieveTodoFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(RetrieveTodoFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$RetrieveTodoFailure implements RetrieveTodoFailure {
  const _$RetrieveTodoFailure({this.description = 'Error retrieving todos'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error retrieving todos')
  @override
  final String description;

  @override
  String toString() {
    return 'TodoFailure.retrieveFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RetrieveTodoFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $RetrieveTodoFailureCopyWith<RetrieveTodoFailure> get copyWith =>
      _$RetrieveTodoFailureCopyWithImpl<RetrieveTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
    @required TResult toggleFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return retrieveFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    TResult toggleFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieveFailure != null) {
      return retrieveFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveTodoFailure value),
    @required TResult addFailure(AddTodoFailure value),
    @required TResult removeFailure(RemoveTodoFailure value),
    @required TResult editFailure(EditTodoFailure value),
    @required TResult toggleFailure(ToggleTodoFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return retrieveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveTodoFailure value),
    TResult addFailure(AddTodoFailure value),
    TResult removeFailure(RemoveTodoFailure value),
    TResult editFailure(EditTodoFailure value),
    TResult toggleFailure(ToggleTodoFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (retrieveFailure != null) {
      return retrieveFailure(this);
    }
    return orElse();
  }
}

abstract class RetrieveTodoFailure implements TodoFailure {
  const factory RetrieveTodoFailure({String description}) =
      _$RetrieveTodoFailure;

  @override
  String get description;
  @override
  $RetrieveTodoFailureCopyWith<RetrieveTodoFailure> get copyWith;
}

/// @nodoc
abstract class $AddTodoFailureCopyWith<$Res>
    implements $TodoFailureCopyWith<$Res> {
  factory $AddTodoFailureCopyWith(
          AddTodoFailure value, $Res Function(AddTodoFailure) then) =
      _$AddTodoFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$AddTodoFailureCopyWithImpl<$Res> extends _$TodoFailureCopyWithImpl<$Res>
    implements $AddTodoFailureCopyWith<$Res> {
  _$AddTodoFailureCopyWithImpl(
      AddTodoFailure _value, $Res Function(AddTodoFailure) _then)
      : super(_value, (v) => _then(v as AddTodoFailure));

  @override
  AddTodoFailure get _value => super._value as AddTodoFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(AddTodoFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$AddTodoFailure implements AddTodoFailure {
  const _$AddTodoFailure({this.description = 'Error adding todo'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error adding todo')
  @override
  final String description;

  @override
  String toString() {
    return 'TodoFailure.addFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddTodoFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $AddTodoFailureCopyWith<AddTodoFailure> get copyWith =>
      _$AddTodoFailureCopyWithImpl<AddTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
    @required TResult toggleFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return addFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    TResult toggleFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveTodoFailure value),
    @required TResult addFailure(AddTodoFailure value),
    @required TResult removeFailure(RemoveTodoFailure value),
    @required TResult editFailure(EditTodoFailure value),
    @required TResult toggleFailure(ToggleTodoFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveTodoFailure value),
    TResult addFailure(AddTodoFailure value),
    TResult removeFailure(RemoveTodoFailure value),
    TResult editFailure(EditTodoFailure value),
    TResult toggleFailure(ToggleTodoFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddTodoFailure implements TodoFailure {
  const factory AddTodoFailure({String description}) = _$AddTodoFailure;

  @override
  String get description;
  @override
  $AddTodoFailureCopyWith<AddTodoFailure> get copyWith;
}

/// @nodoc
abstract class $RemoveTodoFailureCopyWith<$Res>
    implements $TodoFailureCopyWith<$Res> {
  factory $RemoveTodoFailureCopyWith(
          RemoveTodoFailure value, $Res Function(RemoveTodoFailure) then) =
      _$RemoveTodoFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$RemoveTodoFailureCopyWithImpl<$Res>
    extends _$TodoFailureCopyWithImpl<$Res>
    implements $RemoveTodoFailureCopyWith<$Res> {
  _$RemoveTodoFailureCopyWithImpl(
      RemoveTodoFailure _value, $Res Function(RemoveTodoFailure) _then)
      : super(_value, (v) => _then(v as RemoveTodoFailure));

  @override
  RemoveTodoFailure get _value => super._value as RemoveTodoFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(RemoveTodoFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$RemoveTodoFailure implements RemoveTodoFailure {
  const _$RemoveTodoFailure({this.description = 'Error removing todo'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error removing todo')
  @override
  final String description;

  @override
  String toString() {
    return 'TodoFailure.removeFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RemoveTodoFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $RemoveTodoFailureCopyWith<RemoveTodoFailure> get copyWith =>
      _$RemoveTodoFailureCopyWithImpl<RemoveTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
    @required TResult toggleFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return removeFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    TResult toggleFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFailure != null) {
      return removeFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveTodoFailure value),
    @required TResult addFailure(AddTodoFailure value),
    @required TResult removeFailure(RemoveTodoFailure value),
    @required TResult editFailure(EditTodoFailure value),
    @required TResult toggleFailure(ToggleTodoFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return removeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveTodoFailure value),
    TResult addFailure(AddTodoFailure value),
    TResult removeFailure(RemoveTodoFailure value),
    TResult editFailure(EditTodoFailure value),
    TResult toggleFailure(ToggleTodoFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (removeFailure != null) {
      return removeFailure(this);
    }
    return orElse();
  }
}

abstract class RemoveTodoFailure implements TodoFailure {
  const factory RemoveTodoFailure({String description}) = _$RemoveTodoFailure;

  @override
  String get description;
  @override
  $RemoveTodoFailureCopyWith<RemoveTodoFailure> get copyWith;
}

/// @nodoc
abstract class $EditTodoFailureCopyWith<$Res>
    implements $TodoFailureCopyWith<$Res> {
  factory $EditTodoFailureCopyWith(
          EditTodoFailure value, $Res Function(EditTodoFailure) then) =
      _$EditTodoFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$EditTodoFailureCopyWithImpl<$Res>
    extends _$TodoFailureCopyWithImpl<$Res>
    implements $EditTodoFailureCopyWith<$Res> {
  _$EditTodoFailureCopyWithImpl(
      EditTodoFailure _value, $Res Function(EditTodoFailure) _then)
      : super(_value, (v) => _then(v as EditTodoFailure));

  @override
  EditTodoFailure get _value => super._value as EditTodoFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(EditTodoFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$EditTodoFailure implements EditTodoFailure {
  const _$EditTodoFailure({this.description = 'Error editing todo'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error editing todo')
  @override
  final String description;

  @override
  String toString() {
    return 'TodoFailure.editFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EditTodoFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $EditTodoFailureCopyWith<EditTodoFailure> get copyWith =>
      _$EditTodoFailureCopyWithImpl<EditTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
    @required TResult toggleFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return editFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    TResult toggleFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveTodoFailure value),
    @required TResult addFailure(AddTodoFailure value),
    @required TResult removeFailure(RemoveTodoFailure value),
    @required TResult editFailure(EditTodoFailure value),
    @required TResult toggleFailure(ToggleTodoFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveTodoFailure value),
    TResult addFailure(AddTodoFailure value),
    TResult removeFailure(RemoveTodoFailure value),
    TResult editFailure(EditTodoFailure value),
    TResult toggleFailure(ToggleTodoFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditTodoFailure implements TodoFailure {
  const factory EditTodoFailure({String description}) = _$EditTodoFailure;

  @override
  String get description;
  @override
  $EditTodoFailureCopyWith<EditTodoFailure> get copyWith;
}

/// @nodoc
abstract class $ToggleTodoFailureCopyWith<$Res>
    implements $TodoFailureCopyWith<$Res> {
  factory $ToggleTodoFailureCopyWith(
          ToggleTodoFailure value, $Res Function(ToggleTodoFailure) then) =
      _$ToggleTodoFailureCopyWithImpl<$Res>;
  @override
  $Res call({String description});
}

/// @nodoc
class _$ToggleTodoFailureCopyWithImpl<$Res>
    extends _$TodoFailureCopyWithImpl<$Res>
    implements $ToggleTodoFailureCopyWith<$Res> {
  _$ToggleTodoFailureCopyWithImpl(
      ToggleTodoFailure _value, $Res Function(ToggleTodoFailure) _then)
      : super(_value, (v) => _then(v as ToggleTodoFailure));

  @override
  ToggleTodoFailure get _value => super._value as ToggleTodoFailure;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(ToggleTodoFailure(
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$ToggleTodoFailure implements ToggleTodoFailure {
  const _$ToggleTodoFailure({this.description = 'Error toggling todo'})
      : assert(description != null);

  @JsonKey(defaultValue: 'Error toggling todo')
  @override
  final String description;

  @override
  String toString() {
    return 'TodoFailure.toggleFailure(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ToggleTodoFailure &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  $ToggleTodoFailureCopyWith<ToggleTodoFailure> get copyWith =>
      _$ToggleTodoFailureCopyWithImpl<ToggleTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult retrieveFailure(String description),
    @required TResult addFailure(String description),
    @required TResult removeFailure(String description),
    @required TResult editFailure(String description),
    @required TResult toggleFailure(String description),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return toggleFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult retrieveFailure(String description),
    TResult addFailure(String description),
    TResult removeFailure(String description),
    TResult editFailure(String description),
    TResult toggleFailure(String description),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleFailure != null) {
      return toggleFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult retrieveFailure(RetrieveTodoFailure value),
    @required TResult addFailure(AddTodoFailure value),
    @required TResult removeFailure(RemoveTodoFailure value),
    @required TResult editFailure(EditTodoFailure value),
    @required TResult toggleFailure(ToggleTodoFailure value),
  }) {
    assert(retrieveFailure != null);
    assert(addFailure != null);
    assert(removeFailure != null);
    assert(editFailure != null);
    assert(toggleFailure != null);
    return toggleFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult retrieveFailure(RetrieveTodoFailure value),
    TResult addFailure(AddTodoFailure value),
    TResult removeFailure(RemoveTodoFailure value),
    TResult editFailure(EditTodoFailure value),
    TResult toggleFailure(ToggleTodoFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (toggleFailure != null) {
      return toggleFailure(this);
    }
    return orElse();
  }
}

abstract class ToggleTodoFailure implements TodoFailure {
  const factory ToggleTodoFailure({String description}) = _$ToggleTodoFailure;

  @override
  String get description;
  @override
  $ToggleTodoFailureCopyWith<ToggleTodoFailure> get copyWith;
}
