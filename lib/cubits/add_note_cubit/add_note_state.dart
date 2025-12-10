class AddNoteState {}

class AddNoteinitial extends AddNoteState {}

class AddNoteloading extends AddNoteState {}

class AddNotesuccessful extends AddNoteState {}

class AddNotefailure extends AddNoteState {
  final String errorrmassage;
  AddNotefailure(this.errorrmassage);
}
