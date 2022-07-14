import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/providers/app_provider.dart';
import 'package:todo/provider/providers/database_provider.dart';

BuildContext? _mainContext;
BuildContext get mainContext => _mainContext!;
bool get hasContext => _mainContext != null;

/// Provide quick lookups for the main Models and Services in the App.
T getProvided<T>() {
  assert(_mainContext != null,
      'You must call `setContext(BuildContext)` method before calling Commands.');
  return _mainContext!.read<T>();
}

AppProvider get appProvider => getProvided();
DatabaseProvider get databaseProvider => getProvided();

Future<void> launch(BuildContext context) async {
  _mainContext = context;
  await Future.delayed(const Duration(seconds: 3));
  appProvider.isInitializing = false;
}
