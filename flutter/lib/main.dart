import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  late StateManagement dropDownValue;
  @override
  void initState() {
    dropDownValue = StateManagement.providers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DropdownButton<String>(
          underline: const SizedBox(),
          value: dropDownValue.name,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
          ),
          selectedItemBuilder: (BuildContext context) {
            //<-- SEE HERE
            return StateManagement.values
              .map((e) => e.name)
              .toList()
                .map((String value) {
              return Center(
                child: Text(
                  dropDownValue.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
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
              dropDownValue = StateManagement.values
                  .firstWhere((element) => element.name == value);
            });
          },
        ),
      ),
    );
  }
}
