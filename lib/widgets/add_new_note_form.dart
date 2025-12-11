import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon_%20add_note.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNewNOteForm extends StatefulWidget {
  const AddNewNOteForm({super.key});

  @override
  State<AddNewNOteForm> createState() => _AddNewNOteFormState();
}

class _AddNewNOteFormState extends State<AddNewNOteForm> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: ListView(
        children: [
          const SizedBox(height: 30),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(height: 4),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hint: 'content',
            maxlines: 5,
          ),
          const SizedBox(height: 90),
          CustomIconaddNote(
            ontap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                setState(() {});
                AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
