import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_pp/constants.dart';
import 'package:notes_pp/cubits/notes_cubit/notes_state.dart';
import 'package:notes_pp/models/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  void fetchAllNote(NoteModel note) {
    emit(NoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NoteSuccess(notes: notes));
    } catch (e) {
      emit(NoteFailuer(errorMessage: e.toString()));
    }
  }
}
