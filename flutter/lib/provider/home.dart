import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/app_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, provider, _) {
        if (!provider.isInitializing) {
          return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
            ),
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
