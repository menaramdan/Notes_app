import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/read_not_cubit/read_note_cubit.dart';
import 'package:notes_app/widgets/notes_item_listview.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<ReadNoteCubit>(context).readallnotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NotesViewAppbar(title: 'Notes', icon: Icons.search),
        Expanded(child: NotesItemListview()),
      ],
    );
  }
}
