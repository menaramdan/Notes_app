import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_icon.dart';

class NotesViewAppbar extends StatelessWidget {
  const NotesViewAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 140,),
        Text('Notes' , style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
    
        Padding(
          padding: EdgeInsets.only(left: 270),
          child: NotesViewIcon(),
        )
      ],
    );
  }
}