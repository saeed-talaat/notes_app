import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_pp/constants.dart';
import 'package:notes_pp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Color(0xff251101);
  Future<void> addNote(NoteModel note) async {
    note.color = color.toARGB32();
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    }  catch (e) {
      emit(AddNoteFailuer(errorMessage: e.toString()));
    }
  }
}
