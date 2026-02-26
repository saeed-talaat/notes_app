import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_pp/constants.dart';
import 'package:notes_pp/cubits/notes_cubit/notes_state.dart';
import 'package:notes_pp/models/note_model.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  late List<NoteModel> notes;
  void fetchAllNote() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NoteSuccess());
  }
}
