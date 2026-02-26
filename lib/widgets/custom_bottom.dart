import 'package:flutter/material.dart';
import 'package:notes_pp/constants.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key, this.onPressed, this.isLoading = false})
      : super(key: key);

  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(MediaQuery.of(context).size.width, 50),
      ),
      onPressed: isLoading ? null : onPressed,
      child: isLoading
          ? Center(
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            )
          : Text(
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
