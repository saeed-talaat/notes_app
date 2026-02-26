import 'package:flutter/material.dart';
import 'package:notes_pp/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon,  this.onPressed}) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       
         Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}

