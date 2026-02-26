import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_pp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_pp/models/note_model.dart';
import 'package:notes_pp/widgets/custom_app_bar.dart';
import 'package:notes_pp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({Key? key, required this.noteModel}) : super(key: key);

  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subTitle = subTitle ?? widget.noteModel.subTitle;
              widget.noteModel.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNote();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onChanged: (value) => title = value,
            hintText: widget.noteModel.title,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) => subTitle = value,
            hintText: widget.noteModel.subTitle,
            maxLines: 5,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
