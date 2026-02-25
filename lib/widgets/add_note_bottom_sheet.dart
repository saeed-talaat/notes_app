import 'package:flutter/material.dart';
import 'package:notes_pp/constants.dart';
import 'package:notes_pp/widgets/custom_text_field.dart';

class AddNoteBottmSheet extends StatelessWidget {
  const AddNoteBottmSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hintText: 'Title',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              hintText: 'Content',
              maxLines: 5,
            ),
             const SizedBox(
              height: 32,
            ),
            const CustomBottom(),
             const SizedBox(
              height: 32,
            ),
            
          ],
        ),
      ),
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
      ),
      onPressed: () {},
      child: Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
