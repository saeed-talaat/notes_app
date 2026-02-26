import 'package:flutter/material.dart';
import 'package:notes_pp/models/note_model.dart';
import 'package:notes_pp/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.noteModel}) : super(key: key);

  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        noteModel: noteModel,
      ),
    );
  }
}
