// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TodosFromDbData extends DataClass implements Insertable<TodosFromDbData> {
  final int id;
  final String title;
  final String content;
  final DateTime doingDate;
  TodosFromDbData(
      {required this.id,
      required this.title,
      required this.content,
      required this.doingDate});
  factory TodosFromDbData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TodosFromDbData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
      doingDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}doing_date'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(content);
    map['doing_date'] = Variable<DateTime>(doingDate);
    return map;
  }

  TodosFromDbCompanion toCompanion(bool nullToAbsent) {
    return TodosFromDbCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      doingDate: Value(doingDate),
    );
  }

  factory TodosFromDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodosFromDbData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      doingDate: serializer.fromJson<DateTime>(json['doingDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'doingDate': serializer.toJson<DateTime>(doingDate),
    };
  }

  TodosFromDbData copyWith(
          {int? id, String? title, String? content, DateTime? doingDate}) =>
      TodosFromDbData(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content ?? this.content,
        doingDate: doingDate ?? this.doingDate,
      );
  @override
  String toString() {
    return (StringBuffer('TodosFromDbData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('doingDate: $doingDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, content, doingDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodosFromDbData &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.doingDate == this.doingDate);
}

class TodosFromDbCompanion extends UpdateCompanion<TodosFromDbData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> content;
  final Value<DateTime> doingDate;
  const TodosFromDbCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.doingDate = const Value.absent(),
  });
  TodosFromDbCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String content,
    required DateTime doingDate,
  })  : title = Value(title),
        content = Value(content),
        doingDate = Value(doingDate);
  static Insertable<TodosFromDbData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<DateTime>? doingDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'body': content,
      if (doingDate != null) 'doing_date': doingDate,
    });
  }

  TodosFromDbCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? content,
      Value<DateTime>? doingDate}) {
    return TodosFromDbCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      doingDate: doingDate ?? this.doingDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['body'] = Variable<String>(content.value);
    }
    if (doingDate.present) {
      map['doing_date'] = Variable<DateTime>(doingDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosFromDbCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('doingDate: $doingDate')
          ..write(')'))
        .toString();
  }
}

class $TodosFromDbTable extends TodosFromDb
    with TableInfo<$TodosFromDbTable, TodosFromDbData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TodosFromDbTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
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
  @override
  List<GeneratedColumn> get $columns => [id, title, content, doingDate];
  @override
  String get aliasedName => _alias ?? 'todos_from_db';
  @override
  String get actualTableName => 'todos_from_db';
  @override
  VerificationContext validateIntegrity(Insertable<TodosFromDbData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
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
