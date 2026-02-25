import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/add_note_bottom_sheet.dart';
import 'package:notes_pp/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) {
            return const  AddNoteBottmSheet();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}



