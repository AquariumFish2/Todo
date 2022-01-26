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

  _Todo call(String title, String content, DateTime doingDate, [int? id]) {
    return _Todo(
      title,
      content,
      doingDate,
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
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get doingDate => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({String title, String content, DateTime doingDate, int? id});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? doingDate = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      doingDate: doingDate == freezed
          ? _value.doingDate
          : doingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  $Res call({String title, String content, DateTime doingDate, int? id});
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
    Object? title = freezed,
    Object? content = freezed,
    Object? doingDate = freezed,
    Object? id = freezed,
  }) {
    return _then(_Todo(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      doingDate == freezed
          ? _value.doingDate
          : doingDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
  const _$_Todo(this.title, this.content, this.doingDate, [this.id]);

  factory _$_Todo.fromJson(Map<String, dynamic> json) => _$$_TodoFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final DateTime doingDate;
  @override
  final int? id;

  @override
  String toString() {
    return 'Todo(title: $title, content: $content, doingDate: $doingDate, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Todo &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.doingDate, doingDate) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(doingDate),
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
  const factory _Todo(String title, String content, DateTime doingDate,
      [int? id]) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  DateTime get doingDate;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith => throw _privateConstructorUsedError;
}

ResultTodos _$ResultTodosFromJson(Map<String, dynamic> json) {
  return _ResultTodos.fromJson(json);
}

/// @nodoc
class _$ResultTodosTearOff {
  const _$ResultTodosTearOff();

  _ResultTodos call(List<Todo> resultTodos) {
    return _ResultTodos(
      resultTodos,
    );
  }

  ResultTodos fromJson(Map<String, Object?> json) {
    return ResultTodos.fromJson(json);
  }
}

/// @nodoc
const $ResultTodos = _$ResultTodosTearOff();

/// @nodoc
mixin _$ResultTodos {
  List<Todo> get resultTodos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultTodosCopyWith<ResultTodos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultTodosCopyWith<$Res> {
  factory $ResultTodosCopyWith(
          ResultTodos value, $Res Function(ResultTodos) then) =
      _$ResultTodosCopyWithImpl<$Res>;
  $Res call({List<Todo> resultTodos});
}

/// @nodoc
class _$ResultTodosCopyWithImpl<$Res> implements $ResultTodosCopyWith<$Res> {
  _$ResultTodosCopyWithImpl(this._value, this._then);

  final ResultTodos _value;
  // ignore: unused_field
  final $Res Function(ResultTodos) _then;

  @override
  $Res call({
    Object? resultTodos = freezed,
  }) {
    return _then(_value.copyWith(
      resultTodos: resultTodos == freezed
          ? _value.resultTodos
          : resultTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$ResultTodosCopyWith<$Res>
    implements $ResultTodosCopyWith<$Res> {
  factory _$ResultTodosCopyWith(
          _ResultTodos value, $Res Function(_ResultTodos) then) =
      __$ResultTodosCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> resultTodos});
}

/// @nodoc
class __$ResultTodosCopyWithImpl<$Res> extends _$ResultTodosCopyWithImpl<$Res>
    implements _$ResultTodosCopyWith<$Res> {
  __$ResultTodosCopyWithImpl(
      _ResultTodos _value, $Res Function(_ResultTodos) _then)
      : super(_value, (v) => _then(v as _ResultTodos));

  @override
  _ResultTodos get _value => super._value as _ResultTodos;

  @override
  $Res call({
    Object? resultTodos = freezed,
  }) {
    return _then(_ResultTodos(
      resultTodos == freezed
          ? _value.resultTodos
          : resultTodos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultTodos implements _ResultTodos {
  const _$_ResultTodos(this.resultTodos);

  factory _$_ResultTodos.fromJson(Map<String, dynamic> json) =>
      _$$_ResultTodosFromJson(json);

  @override
  final List<Todo> resultTodos;

  @override
  String toString() {
    return 'ResultTodos(resultTodos: $resultTodos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultTodos &&
            const DeepCollectionEquality()
                .equals(other.resultTodos, resultTodos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(resultTodos));

  @JsonKey(ignore: true)
  @override
  _$ResultTodosCopyWith<_ResultTodos> get copyWith =>
      __$ResultTodosCopyWithImpl<_ResultTodos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultTodosToJson(this);
  }
}

abstract class _ResultTodos implements ResultTodos {
  const factory _ResultTodos(List<Todo> resultTodos) = _$_ResultTodos;

  factory _ResultTodos.fromJson(Map<String, dynamic> json) =
      _$_ResultTodos.fromJson;

  @override
  List<Todo> get resultTodos;
  @override
  @JsonKey(ignore: true)
  _$ResultTodosCopyWith<_ResultTodos> get copyWith =>
      throw _privateConstructorUsedError;
}
