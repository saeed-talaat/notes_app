import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/custom_app_bar.dart';
import 'package:notes_pp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppBar(title: 'Edit Note', icon: Icons.check),
          const CustomTextField(hintText: 'Title'),
          const SizedBox(
            height: 16,
          ),
          const CustomTextField(hintText: 'Content', maxLines: 5)
        ],
      ),
    );
  }
}
