import 'package:flutter/material.dart';

void main() {
  runApp(const NotesAPP());
}

class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(),
    );
  }
}
