
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';
class Editnotbodysview extends StatelessWidget {
  const Editnotbodysview({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        NotesViewAppbar(title: 'EditNote', icon: Icons.check),
      ],
    );
  }
}