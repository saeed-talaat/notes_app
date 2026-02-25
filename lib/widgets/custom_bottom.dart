import 'package:flutter/material.dart';
import 'package:notes_pp/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key, this.onPressed}) : super(key: key);

 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
      ),
      onPressed: onPressed,
      child: Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}