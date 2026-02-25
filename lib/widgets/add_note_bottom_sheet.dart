import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/custom_text_field.dart';

class AddNoteBottmSheet extends StatelessWidget {
  const AddNoteBottmSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
        const  SizedBox(
            height: 32,
          ),
          CustomTextField(hintText: 'Title',),
          SizedBox(height: 16,),
          CustomTextField(hintText: 'Content' , maxLines: 5,)
        ],
      ),
    );
  }
}

