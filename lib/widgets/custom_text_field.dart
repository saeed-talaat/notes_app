import 'package:flutter/material.dart';
import 'package:notes_pp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText,  this.maxLines  = 1}) : super(key: key);
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kPrimaryColor ,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        
        hintStyle:const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color color = Colors.white}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }
}
