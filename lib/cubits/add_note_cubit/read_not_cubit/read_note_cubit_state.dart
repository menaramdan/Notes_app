import 'package:notes_app/models/note_model.dart';

class ReadNoteCubitState {}

class NoteCubitInitial extends ReadNoteCubitState {}

class NoteCubitSucces extends ReadNoteCubitState {
  final List<NoteModel> model;

  NoteCubitSucces(this.model);
}

class NoteCubitFailure extends ReadNoteCubitState {
  final String errorrmassage;

  NoteCubitFailure(this.errorrmassage);
}
