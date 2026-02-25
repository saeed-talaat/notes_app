import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/custom_app_bar.dart';
import 'package:notes_pp/widgets/custom_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppBar(title: 'Notes', icon: Icons.search,),
          Expanded(child: CutsomListView())
        ],
      ),
    );
  }
}


