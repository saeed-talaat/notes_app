import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_pp/constants.dart';
import 'package:notes_pp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_pp/models/note_model.dart';
import 'package:notes_pp/widgets/color_item.dart';
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
          ),
          const SizedBox(
            height: 32,
          ),
          ColorsListViewEdit(noteModel: widget.noteModel),
        ],
      ),
    );
  }
}

class ColorsListViewEdit extends StatefulWidget {
  const ColorsListViewEdit({Key? key, required this.noteModel})
      : super(key: key);
  final NoteModel noteModel;

  @override
  State<ColorsListViewEdit> createState() => _ColorsListViewEditState();
}

class _ColorsListViewEditState extends State<ColorsListViewEdit> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = kColorsList.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: kColorsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.noteModel.color = kColorsList[index].toARGB32();
                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: kColorsList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
