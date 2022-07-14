import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/home.dart';
import 'package:todo/provider/launch.dart';
import 'package:todo/provider/providers/app_provider.dart';
import 'package:todo/provider/providers/database_provider.dart';

class ProviderMain extends StatelessWidget {
  const ProviderMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // These are providers that need to be initialized before the app starts/control the global state of the app.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppProvider>(create: (_) => AppProvider()),
        ChangeNotifierProvider<DatabaseProvider>(
          create: (_) => DatabaseProvider(),
        ),
      ],
      child: Builder(
        builder: (context) {
          launch(context);
          
          return const HomePage();
        },
      ),
    );
  }
}
