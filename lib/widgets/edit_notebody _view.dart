import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/read_not_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';

class Editnotbodysview extends StatefulWidget {
  const Editnotbodysview({super.key, required this.model});
  final NoteModel model;

  @override
  State<Editnotbodysview> createState() => _EditnotbodysviewState();
}

String? title, subtitle;

class _EditnotbodysviewState extends State<Editnotbodysview> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NotesViewAppbar(
          title: 'EditNote',
          icon: Icons.check,
          onPressed: () {
            widget.model.title = title ?? widget.model.title;
            widget.model.subtitle = subtitle ?? widget.model.subtitle;
            widget.model.save();
            BlocProvider.of<ReadNoteCubit>(context).readAllNotes();
            Navigator.pop(context);
          },
        ),
        SizedBox(height: 18),
        CustomTextField(
          hint: 'title',
          onChange: (Value) {
            title = Value;
          },
        ),
        SizedBox(height: 18),
        CustomTextField(
          hint: 'content',
          maxlines: 5,
          onChange: (Value) {
            subtitle = Value;
          },
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
