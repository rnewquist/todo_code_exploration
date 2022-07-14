import 'package:realm/realm.dart';
part 'todo.g.dart';

@RealmModel()
class _Todo {
  @PrimaryKey()
  late final String id;

  late DateTime lastUpdated;
  late bool isChecked;
  late String name;
  late int position;
}
