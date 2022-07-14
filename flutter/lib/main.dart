import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/provider/main.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0x006096FF),
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: const MainApp(),
    ),
  );
}

enum StateManagement {
  providers('Providers'),
  riverpods('RiverPods'),
  bloc('BloC'),
  getX('GetX');

  const StateManagement(this.name);
  final String name;
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget get child {
    switch (_dropDownValue) {
      case StateManagement.providers:
        return const ProviderMain();
      case StateManagement.riverpods:
        return Container();
      case StateManagement.bloc:
        return Container();
      case StateManagement.getX:
        return Container();
      default:
        return Container();
    }
  }

  late StateManagement _dropDownValue;

  @override
  void initState() {
    _dropDownValue = StateManagement.providers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DropdownButton<String>(
          underline: const SizedBox(),
          icon: const SizedBox(),
          value: _dropDownValue.name,
          selectedItemBuilder: (BuildContext context) {
            return StateManagement.values
                .map((e) => e.name)
                .toList()
                .map((String value) {
              return SizedBox(
                width: 180,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _dropDownValue.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    const Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
              );
            }).toList();
          },
          items: StateManagement.values
              .map((e) => e.name)
              .toList()
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _dropDownValue = StateManagement.values
                  .firstWhere((element) => element.name == value);
            });
          },
        ),
      ),
      body: child,
    );
  }
}
