import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/note_item.dart';

class CutsomListView extends StatelessWidget {
  const CutsomListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: NoteItem(),
        );
      },
    );
  }
}