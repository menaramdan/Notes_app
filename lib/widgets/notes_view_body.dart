
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_item_listview.dart';
import 'package:notes_app/widgets/notes_view_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      NotesViewAppbar(),
      Expanded(child: NotesItemListview())
      ],
    );
  }
}