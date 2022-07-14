// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Todo extends _Todo with RealmEntity, RealmObject {
  Todo(
    String id,
    DateTime lastUpdated,
    bool isChecked,
    String name,
    int position,
  ) {
    RealmObject.set(this, 'id', id);
    RealmObject.set(this, 'lastUpdated', lastUpdated);
    RealmObject.set(this, 'isChecked', isChecked);
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'position', position);
  }

  Todo._();

  @override
  String get id => RealmObject.get<String>(this, 'id') as String;
  @override
  set id(String value) => throw RealmUnsupportedSetError();

  @override
  DateTime get lastUpdated =>
      RealmObject.get<DateTime>(this, 'lastUpdated') as DateTime;
  @override
  set lastUpdated(DateTime value) =>
      RealmObject.set(this, 'lastUpdated', value);

  @override
  bool get isChecked => RealmObject.get<bool>(this, 'isChecked') as bool;
  @override
  set isChecked(bool value) => RealmObject.set(this, 'isChecked', value);

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  int get position => RealmObject.get<int>(this, 'position') as int;
  @override
  set position(int value) => RealmObject.set(this, 'position', value);

  @override
  Stream<RealmObjectChanges<Todo>> get changes =>
      RealmObject.getChanges<Todo>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Todo._);
    return const SchemaObject(Todo, 'Todo', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('lastUpdated', RealmPropertyType.timestamp),
      SchemaProperty('isChecked', RealmPropertyType.bool),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('position', RealmPropertyType.int),
    ]);
  }
}
