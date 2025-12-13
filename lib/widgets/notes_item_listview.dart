import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/read_not_cubit/read_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/read_not_cubit/read_note_cubit_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/notes_item.dart';

class NotesItemListview extends StatefulWidget {
  const NotesItemListview({super.key});

  @override
  State<NotesItemListview> createState() => _NotesItemListviewState();
}

class _NotesItemListviewState extends State<NotesItemListview> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteCubitState>(
      builder: (context, state) {
      List<NoteModel> notes  =BlocProvider.of<ReadNoteCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 10,
                ),
                child: NewsItem(
                model:notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
