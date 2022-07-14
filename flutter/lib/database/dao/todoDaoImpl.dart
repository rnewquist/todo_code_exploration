import 'package:realm/realm.dart';
import 'package:todo/database/dao/todoDao.dart';
import 'package:todo/database/model/todo.dart';

class TodoDaoImpl implements TodoDao {
  TodoDaoImpl(this.realm);
  final Realm realm;
  @override
  void create(Todo todo) {
    realm.write(() {
      realm.add(todo);
    });
  }

  @override
  void delete(Todo todo) {
    realm.write(() {
      realm.delete(todo);
    });
  }

  @override
  Todo read(String id) {
    return realm.query<Todo>('id == "$id"').first;
  }

  @override
  RealmResults<Todo> readAll() {
    return realm.query<Todo>('SORT(position ASC)');
  }

  @override
  void update(Todo todo) {
    realm.write(() {});
  }
}
