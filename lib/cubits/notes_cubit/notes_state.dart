import 'package:notes_pp/models/note_model.dart';

class NoteState {}

class NoteInitial extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {

 final List<NoteModel> notes;

  NoteSuccess({required this.notes});
}

class NoteFailuer extends NoteState {
  final String errorMessage;

  NoteFailuer({required this.errorMessage});
}
