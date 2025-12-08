import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_notebody%20_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView'; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editnotbodysview(),
    );
  }
}
