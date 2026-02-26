import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ColorItem(),
          );
        },
      ),
    );
  }
}