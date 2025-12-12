import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_add_note.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';

class Editnotbodysview extends StatelessWidget {
  const Editnotbodysview({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NotesViewAppbar(title: 'EditNote', icon: Icons.check),
        SizedBox(height: 18),
        CustomTextField(hint: 'title'),
        SizedBox(height: 18),
        CustomTextField(hint: 'content', maxlines: 5),
        SizedBox(height: 25),
        CustomIconaddNote(),
      ],
    );
  }
}
