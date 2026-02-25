import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/custom_bottom.dart';
import 'package:notes_pp/widgets/custom_text_field.dart';

class AddNoteBottmSheet extends StatelessWidget {
  const AddNoteBottmSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({Key? key}) : super(key: key);

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 32,
          ),
           CustomTextField(
            hintText: 'Title',
            onSaved: (value) => title = value,
          ),
          const SizedBox(
            height: 20,
          ),
           CustomTextField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) => subTitle = value,
          ),
          const SizedBox(
            height: 32,
          ),
           CustomBottom(
            onPressed: (){
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }
              else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
