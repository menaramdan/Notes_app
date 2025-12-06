import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_%20add_note.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNewNote extends StatelessWidget {
  const AddNewNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
        SizedBox(height: 30,),
        CustomTextField(hint: 'title',),
        SizedBox(height: 4,),
        CustomTextField(hint: 'content',maxlines: 5,),
        SizedBox(height: 90,),
        CustomIconaddNote(),
      ],
    );
  }
}
