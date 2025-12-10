import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(knotesbox);
  runApp(const NotesAPP());
}

class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {EditNoteView.id: (context) => EditNoteView()},
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      home: NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
