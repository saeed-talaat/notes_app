import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_pp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_pp/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  
  
  int currentIndex = -1;


  List<Color>colorsList = [
    Color(0xff251101),
    Color(0xff470024),
    Color(0xff5B1865),
    Color(0xff2C5784),
    Color(0xff5688C7),
    
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap:() {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colorsList[index];
                setState(() {
                  
                });
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colorsList[index],
              ),
            ),
          );

        },
      ),
    );
  }
}
