import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteinitial());
  addNote(NoteModel note) async {
    try {
      emit(AddNoteloading());
      var notexbox = Hive.box<NoteModel>(knotesbox);
      await notexbox.add(note);
    } on Exception catch (e) {
      emit(AddNotefailure(e.toString()));
    }
  }
}
