import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/read_not_cubit/read_note_cubit.dart';
import 'package:notes_app/widgets/add_new_note_bottom.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadNoteCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNewNote();
              },
            );
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16),
          ),
          child: Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
