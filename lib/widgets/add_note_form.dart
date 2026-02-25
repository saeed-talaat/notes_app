import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_pp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_pp/models/note_model.dart';
import 'package:notes_pp/widgets/custom_bottom.dart';
import 'package:notes_pp/widgets/custom_text_field.dart';

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
                NoteModel noteModel = NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.toARGB32());
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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