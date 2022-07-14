import 'package:realm/realm.dart';
import 'package:todo/database/model/todo.dart';

abstract class TodoDao {
  RealmResults<Todo> readAll();

  void create(Todo todo);

  void delete(Todo todo);

  void update(Todo todo);

  Todo read(String id);
}
