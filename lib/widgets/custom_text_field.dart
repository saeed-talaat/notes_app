import 'package:flutter/material.dart';
import 'package:notes_pp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText,  this.maxLines  = 1, this.onSaved}) : super(key: key);
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value){
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        else{
          return null;
        }
      },
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
