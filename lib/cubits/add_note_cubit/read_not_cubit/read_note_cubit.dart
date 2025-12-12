import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note_cubit/read_not_cubit/read_note_cubit_state.dart';
import 'package:notes_app/helper/constant.dart';
import 'package:notes_app/models/note_model.dart';

class ReadNoteCubit extends Cubit<ReadNoteCubitState> {
  ReadNoteCubit() : super(NoteCubitInitial());

  readAllNote() {
    try {
      var notebox = Hive.box<NoteModel>(knotesbox);
      List<NoteModel> notes = notebox.values.toList();
      emit(NoteCubitSucces(notes));
    } on Exception catch (e) {
      emit(NoteCubitFailure('that are error massage ${e.toString()}'));
    }
  }
}
