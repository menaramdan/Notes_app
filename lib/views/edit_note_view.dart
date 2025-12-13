import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_notebody%20_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key,required  this.model});
  
  final NoteModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Editnotbodysview(
      model: model,
    ));
  }
}
