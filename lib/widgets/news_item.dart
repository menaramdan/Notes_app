import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/add_note_cubit/read_not_cubit/read_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.model});
  final NoteModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.yellow.withValues(alpha: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                model.title,
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  model.subtitle,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black.withValues(alpha: 0.2),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  model.delete();
                  BlocProvider.of<ReadNoteCubit>(context).readAllNotes();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            SizedBox(height: 44),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                model.data,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black.withValues(alpha: 0.2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
