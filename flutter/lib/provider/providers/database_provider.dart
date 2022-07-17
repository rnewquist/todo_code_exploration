import 'package:flutter/material.dart';
import 'package:realm/realm.dart';
import 'package:todo/database/realm/dao/todoDao.dart';
import 'package:todo/database/realm/dao/todoDaoImpl.dart';

class DatabaseProvider extends ChangeNotifier {
  Future<void> init() async {
    _realm = Realm(Configuration.local([]));
    todoDao = TodoDaoImpl(_realm);
  }

  late final TodoDao todoDao;
  late final Realm _realm;
}
