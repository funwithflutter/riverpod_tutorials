// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoFailureTearOff {
  const _$TodoFailureTearOff();

  RetrieveTodoFailure retrieveFailure(
      {String description = 'Error retrieving todos'}) {
    return RetrieveTodoFailure(
      description: description,
    );
  }

  AddTodoFailure addFailure({String description = 'Error adding todo'}) {
    return AddTodoFailure(
      description: description,
    );
  }

  RemoveTodoFailure removeFailure(
      {String description = 'Error removing todo'}) {
    return RemoveTodoFailure(
      description: description,
    );
  }

  EditTodoFailure editFailure({String description = 'Error editing todo'}) {
    return EditTodoFailure(
      description: description,
    );
  }

  ToggleTodoFailure toggleFailure(
      {String description = 'Error toggling todo'}) {
    return ToggleTodoFailure(
      description: description,
    );
  }
}

/// @nodoc
const $TodoFailure = _$TodoFailureTearOff();

/// @nodoc
mixin _$TodoFailure {
  String get description => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) retrieveFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
    required TResult Function(String description) toggleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? retrieveFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    TResult Function(String description)? toggleFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveTodoFailure value) retrieveFailure,
    required TResult Function(AddTodoFailure value) addFailure,
    required TResult Function(RemoveTodoFailure value) removeFailure,
    required TResult Function(EditTodoFailure value) editFailure,
    required TResult Function(ToggleTodoFailure value) toggleFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveTodoFailure value)? retrieveFailure,
    TResult Function(AddTodoFailure value)? addFailure,
    TResult Function(RemoveTodoFailure value)? removeFailure,
    TResult Function(EditTodoFailure value)? editFailure,
    TResult Function(ToggleTodoFailure value)? toggleFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoFailureCopyWith<TodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
    Object? description = freezed,
  }) {
    return _then(RetrieveTodoFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RetrieveTodoFailure implements RetrieveTodoFailure {
  const _$RetrieveTodoFailure({this.description = 'Error retrieving todos'});

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

  @JsonKey(ignore: true)
  @override
  $RetrieveTodoFailureCopyWith<RetrieveTodoFailure> get copyWith =>
      _$RetrieveTodoFailureCopyWithImpl<RetrieveTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) retrieveFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
    required TResult Function(String description) toggleFailure,
  }) {
    return retrieveFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? retrieveFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    TResult Function(String description)? toggleFailure,
    required TResult orElse(),
  }) {
    if (retrieveFailure != null) {
      return retrieveFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveTodoFailure value) retrieveFailure,
    required TResult Function(AddTodoFailure value) addFailure,
    required TResult Function(RemoveTodoFailure value) removeFailure,
    required TResult Function(EditTodoFailure value) editFailure,
    required TResult Function(ToggleTodoFailure value) toggleFailure,
  }) {
    return retrieveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveTodoFailure value)? retrieveFailure,
    TResult Function(AddTodoFailure value)? addFailure,
    TResult Function(RemoveTodoFailure value)? removeFailure,
    TResult Function(EditTodoFailure value)? editFailure,
    TResult Function(ToggleTodoFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
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
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RetrieveTodoFailureCopyWith<RetrieveTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? description = freezed,
  }) {
    return _then(AddTodoFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddTodoFailure implements AddTodoFailure {
  const _$AddTodoFailure({this.description = 'Error adding todo'});

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

  @JsonKey(ignore: true)
  @override
  $AddTodoFailureCopyWith<AddTodoFailure> get copyWith =>
      _$AddTodoFailureCopyWithImpl<AddTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) retrieveFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
    required TResult Function(String description) toggleFailure,
  }) {
    return addFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? retrieveFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    TResult Function(String description)? toggleFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveTodoFailure value) retrieveFailure,
    required TResult Function(AddTodoFailure value) addFailure,
    required TResult Function(RemoveTodoFailure value) removeFailure,
    required TResult Function(EditTodoFailure value) editFailure,
    required TResult Function(ToggleTodoFailure value) toggleFailure,
  }) {
    return addFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveTodoFailure value)? retrieveFailure,
    TResult Function(AddTodoFailure value)? addFailure,
    TResult Function(RemoveTodoFailure value)? removeFailure,
    TResult Function(EditTodoFailure value)? editFailure,
    TResult Function(ToggleTodoFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (addFailure != null) {
      return addFailure(this);
    }
    return orElse();
  }
}

abstract class AddTodoFailure implements TodoFailure {
  const factory AddTodoFailure({String description}) = _$AddTodoFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $AddTodoFailureCopyWith<AddTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? description = freezed,
  }) {
    return _then(RemoveTodoFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveTodoFailure implements RemoveTodoFailure {
  const _$RemoveTodoFailure({this.description = 'Error removing todo'});

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

  @JsonKey(ignore: true)
  @override
  $RemoveTodoFailureCopyWith<RemoveTodoFailure> get copyWith =>
      _$RemoveTodoFailureCopyWithImpl<RemoveTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) retrieveFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
    required TResult Function(String description) toggleFailure,
  }) {
    return removeFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? retrieveFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    TResult Function(String description)? toggleFailure,
    required TResult orElse(),
  }) {
    if (removeFailure != null) {
      return removeFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveTodoFailure value) retrieveFailure,
    required TResult Function(AddTodoFailure value) addFailure,
    required TResult Function(RemoveTodoFailure value) removeFailure,
    required TResult Function(EditTodoFailure value) editFailure,
    required TResult Function(ToggleTodoFailure value) toggleFailure,
  }) {
    return removeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveTodoFailure value)? retrieveFailure,
    TResult Function(AddTodoFailure value)? addFailure,
    TResult Function(RemoveTodoFailure value)? removeFailure,
    TResult Function(EditTodoFailure value)? editFailure,
    TResult Function(ToggleTodoFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (removeFailure != null) {
      return removeFailure(this);
    }
    return orElse();
  }
}

abstract class RemoveTodoFailure implements TodoFailure {
  const factory RemoveTodoFailure({String description}) = _$RemoveTodoFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $RemoveTodoFailureCopyWith<RemoveTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? description = freezed,
  }) {
    return _then(EditTodoFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTodoFailure implements EditTodoFailure {
  const _$EditTodoFailure({this.description = 'Error editing todo'});

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

  @JsonKey(ignore: true)
  @override
  $EditTodoFailureCopyWith<EditTodoFailure> get copyWith =>
      _$EditTodoFailureCopyWithImpl<EditTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) retrieveFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
    required TResult Function(String description) toggleFailure,
  }) {
    return editFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? retrieveFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    TResult Function(String description)? toggleFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveTodoFailure value) retrieveFailure,
    required TResult Function(AddTodoFailure value) addFailure,
    required TResult Function(RemoveTodoFailure value) removeFailure,
    required TResult Function(EditTodoFailure value) editFailure,
    required TResult Function(ToggleTodoFailure value) toggleFailure,
  }) {
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveTodoFailure value)? retrieveFailure,
    TResult Function(AddTodoFailure value)? addFailure,
    TResult Function(RemoveTodoFailure value)? removeFailure,
    TResult Function(EditTodoFailure value)? editFailure,
    TResult Function(ToggleTodoFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditTodoFailure implements TodoFailure {
  const factory EditTodoFailure({String description}) = _$EditTodoFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EditTodoFailureCopyWith<EditTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? description = freezed,
  }) {
    return _then(ToggleTodoFailure(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleTodoFailure implements ToggleTodoFailure {
  const _$ToggleTodoFailure({this.description = 'Error toggling todo'});

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

  @JsonKey(ignore: true)
  @override
  $ToggleTodoFailureCopyWith<ToggleTodoFailure> get copyWith =>
      _$ToggleTodoFailureCopyWithImpl<ToggleTodoFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String description) retrieveFailure,
    required TResult Function(String description) addFailure,
    required TResult Function(String description) removeFailure,
    required TResult Function(String description) editFailure,
    required TResult Function(String description) toggleFailure,
  }) {
    return toggleFailure(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String description)? retrieveFailure,
    TResult Function(String description)? addFailure,
    TResult Function(String description)? removeFailure,
    TResult Function(String description)? editFailure,
    TResult Function(String description)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggleFailure != null) {
      return toggleFailure(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RetrieveTodoFailure value) retrieveFailure,
    required TResult Function(AddTodoFailure value) addFailure,
    required TResult Function(RemoveTodoFailure value) removeFailure,
    required TResult Function(EditTodoFailure value) editFailure,
    required TResult Function(ToggleTodoFailure value) toggleFailure,
  }) {
    return toggleFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RetrieveTodoFailure value)? retrieveFailure,
    TResult Function(AddTodoFailure value)? addFailure,
    TResult Function(RemoveTodoFailure value)? removeFailure,
    TResult Function(EditTodoFailure value)? editFailure,
    TResult Function(ToggleTodoFailure value)? toggleFailure,
    required TResult orElse(),
  }) {
    if (toggleFailure != null) {
      return toggleFailure(this);
    }
    return orElse();
  }
}

abstract class ToggleTodoFailure implements TodoFailure {
  const factory ToggleTodoFailure({String description}) = _$ToggleTodoFailure;

  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ToggleTodoFailureCopyWith<ToggleTodoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
