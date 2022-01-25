// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

  _Todo call(DateTime doingDate, String title, String content, [int? id]) {
    return _Todo(
      doingDate,
      title,
      content,
      id,
    );
  }

  Todo fromJson(Map<String, Object?> json) {
    return Todo.fromJson(json);
  }
}

/// @nodoc
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  DateTime get doingDate => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({DateTime doingDate, String title, String content, int? id});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? doingDate = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      doingDate: doingDate == freezed
          ? _value.doingDate
          : doingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({DateTime doingDate, String title, String content, int? id});
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
    Object? doingDate = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? id = freezed,
  }) {
    return _then(_Todo(
      doingDate == freezed
          ? _value.doingDate
          : doingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Todo implements _Todo {
  const _$_Todo(this.doingDate, this.title, this.content, [this.id]);

  factory _$_Todo.fromJson(Map<String, dynamic> json) => _$$_TodoFromJson(json);

  @override
  final DateTime doingDate;
  @override
  final String title;
  @override
  final String content;
  @override
  final int? id;

  @override
  String toString() {
    return 'Todo(doingDate: $doingDate, title: $title, content: $content, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            const DeepCollectionEquality().equals(other.doingDate, doingDate) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(doingDate),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoToJson(this);
  }
}

abstract class _Todo implements Todo {
  const factory _Todo(DateTime doingDate, String title, String content,
      [int? id]) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  DateTime get doingDate;
  @override
  String get title;
  @override
  String get content;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith => throw _privateConstructorUsedError;
}

ReasultTodos _$ReasultTodosFromJson(Map<String, dynamic> json) {
  return _ReasultTodos.fromJson(json);
}

/// @nodoc
class _$ReasultTodosTearOff {
  const _$ReasultTodosTearOff();

  _ReasultTodos call(List<Todo> todos) {
    return _ReasultTodos(
      todos,
    );
  }

  ReasultTodos fromJson(Map<String, Object?> json) {
    return ReasultTodos.fromJson(json);
  }
}

/// @nodoc
const $ReasultTodos = _$ReasultTodosTearOff();

/// @nodoc
mixin _$ReasultTodos {
  List<Todo> get todos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReasultTodosCopyWith<ReasultTodos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasultTodosCopyWith<$Res> {
  factory $ReasultTodosCopyWith(
          ReasultTodos value, $Res Function(ReasultTodos) then) =
      _$ReasultTodosCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$ReasultTodosCopyWithImpl<$Res> implements $ReasultTodosCopyWith<$Res> {
  _$ReasultTodosCopyWithImpl(this._value, this._then);

  final ReasultTodos _value;
  // ignore: unused_field
  final $Res Function(ReasultTodos) _then;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$ReasultTodosCopyWith<$Res>
    implements $ReasultTodosCopyWith<$Res> {
  factory _$ReasultTodosCopyWith(
          _ReasultTodos value, $Res Function(_ReasultTodos) then) =
      __$ReasultTodosCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$ReasultTodosCopyWithImpl<$Res> extends _$ReasultTodosCopyWithImpl<$Res>
    implements _$ReasultTodosCopyWith<$Res> {
  __$ReasultTodosCopyWithImpl(
      _ReasultTodos _value, $Res Function(_ReasultTodos) _then)
      : super(_value, (v) => _then(v as _ReasultTodos));

  @override
  _ReasultTodos get _value => super._value as _ReasultTodos;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_ReasultTodos(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReasultTodos implements _ReasultTodos {
  const _$_ReasultTodos(this.todos);

  factory _$_ReasultTodos.fromJson(Map<String, dynamic> json) =>
      _$$_ReasultTodosFromJson(json);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'ReasultTodos(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReasultTodos &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$ReasultTodosCopyWith<_ReasultTodos> get copyWith =>
      __$ReasultTodosCopyWithImpl<_ReasultTodos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReasultTodosToJson(this);
  }
}

abstract class _ReasultTodos implements ReasultTodos {
  const factory _ReasultTodos(List<Todo> todos) = _$_ReasultTodos;

  factory _ReasultTodos.fromJson(Map<String, dynamic> json) =
      _$_ReasultTodos.fromJson;

  @override
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  _$ReasultTodosCopyWith<_ReasultTodos> get copyWith =>
      throw _privateConstructorUsedError;
}
