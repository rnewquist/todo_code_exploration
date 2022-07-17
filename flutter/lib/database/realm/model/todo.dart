import 'package:realm/realm.dart';
part 'todo.g.dart';

@RealmModel()
class _TodoModel {
  @PrimaryKey()
  late final String id;

  late DateTime lastUpdated;
  late bool isChecked;
  late String name;
  late int position;
}

class Todo extends TodoModel {
  Todo(
      super.id, super.lastUpdated, super.isChecked, super.name, super.position);

  Realm? instance;

  @override
  set lastUpdated(DateTime value) => instance != null
      ? instance!.write(
          () => super.lastUpdated = value,
        )
      : super.lastUpdated = value;

  @override
  set isChecked(bool value) => instance != null
      ? instance!.write(
          () => super.isChecked = value,
        )
      : super.isChecked = value;

  @override
  set name(String value) => instance != null
      ? instance!.write(
          () => super.name = value,
        )
      : super.name = value;

  @override
  set position(int value) => instance != null
      ? instance!.write(
          () => super.position = value,
        )
      : super.position = value;
}
