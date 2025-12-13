import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_icon_add_note.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'dart:core';

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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomIconaddNote(
                isloading: state is AddNoteloading ? true : false,
                ontap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentdate = DateTime.now();
                    var formatedate = DateFormat(
                      'dd-mm-yyyy',
                    ).format(currentdate);
                    var notemodel = NoteModel(
                      data: formatedate,
                      title: title!,
                      subtitle: content!,
                      color: Colors.black.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                    
                  } else {
                    setState(() {});
                    AutovalidateMode.always;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
