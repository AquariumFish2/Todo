// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TodosFromDbData extends DataClass implements Insertable<TodosFromDbData> {
  final String title;
  final String content;
  final DateTime doingDate;
  final int id;
  TodosFromDbData(
      {required this.title,
      required this.content,
      required this.doingDate,
      required this.id});
  factory TodosFromDbData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TodosFromDbData(
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
      doingDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}doing_date'])!,
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(content);
    map['doing_date'] = Variable<DateTime>(doingDate);
    map['id'] = Variable<int>(id);
    return map;
  }

  TodosFromDbCompanion toCompanion(bool nullToAbsent) {
    return TodosFromDbCompanion(
      title: Value(title),
      content: Value(content),
      doingDate: Value(doingDate),
      id: Value(id),
    );
  }

  factory TodosFromDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodosFromDbData(
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      doingDate: serializer.fromJson<DateTime>(json['doingDate']),
      id: serializer.fromJson<int>(json['id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'doingDate': serializer.toJson<DateTime>(doingDate),
      'id': serializer.toJson<int>(id),
    };
  }

  TodosFromDbData copyWith(
          {String? title, String? content, DateTime? doingDate, int? id}) =>
      TodosFromDbData(
        title: title ?? this.title,
        content: content ?? this.content,
        doingDate: doingDate ?? this.doingDate,
        id: id ?? this.id,
      );
  @override
  String toString() {
    return (StringBuffer('TodosFromDbData(')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('doingDate: $doingDate, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(title, content, doingDate, id);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodosFromDbData &&
          other.title == this.title &&
          other.content == this.content &&
          other.doingDate == this.doingDate &&
          other.id == this.id);
}

class TodosFromDbCompanion extends UpdateCompanion<TodosFromDbData> {
  final Value<String> title;
  final Value<String> content;
  final Value<DateTime> doingDate;
  final Value<int> id;
  const TodosFromDbCompanion({
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.doingDate = const Value.absent(),
    this.id = const Value.absent(),
  });
  TodosFromDbCompanion.insert({
    required String title,
    required String content,
    required DateTime doingDate,
    this.id = const Value.absent(),
  })  : title = Value(title),
        content = Value(content),
        doingDate = Value(doingDate);
  static Insertable<TodosFromDbData> custom({
    Expression<String>? title,
    Expression<String>? content,
    Expression<DateTime>? doingDate,
    Expression<int>? id,
  }) {
    return RawValuesInsertable({
      if (title != null) 'title': title,
      if (content != null) 'body': content,
      if (doingDate != null) 'doing_date': doingDate,
      if (id != null) 'id': id,
    });
  }

  TodosFromDbCompanion copyWith(
      {Value<String>? title,
      Value<String>? content,
      Value<DateTime>? doingDate,
      Value<int>? id}) {
    return TodosFromDbCompanion(
      title: title ?? this.title,
      content: content ?? this.content,
      doingDate: doingDate ?? this.doingDate,
      id: id ?? this.id,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['body'] = Variable<String>(content.value);
    }
    if (doingDate.present) {
      map['doing_date'] = Variable<DateTime>(doingDate.value);
    }
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosFromDbCompanion(')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('doingDate: $doingDate, ')
          ..write('id: $id')
          ..write(')'))
        .toString();
  }
}

class $TodosFromDbTable extends TodosFromDb
    with TableInfo<$TodosFromDbTable, TodosFromDbData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TodosFromDbTable(this._db, [this._alias]);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  @override
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'body', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _doingDateMeta = const VerificationMeta('doingDate');
  @override
  late final GeneratedColumn<DateTime?> doingDate = GeneratedColumn<DateTime?>(
      'doing_date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  @override
  List<GeneratedColumn> get $columns => [title, content, doingDate, id];
  @override
  String get aliasedName => _alias ?? 'todos_from_db';
  @override
  String get actualTableName => 'todos_from_db';
  @override
  VerificationContext validateIntegrity(Insertable<TodosFromDbData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['body']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('doing_date')) {
      context.handle(_doingDateMeta,
          doingDate.isAcceptableOrUnknown(data['doing_date']!, _doingDateMeta));
    } else if (isInserting) {
      context.missing(_doingDateMeta);
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodosFromDbData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TodosFromDbData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TodosFromDbTable createAlias(String alias) {
    return $TodosFromDbTable(_db, alias);
  }
}

abstract class _$TodoController extends GeneratedDatabase {
  _$TodoController(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TodosFromDbTable todosFromDb = $TodosFromDbTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todosFromDb];
}
