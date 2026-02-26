import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({Key? key, required this.icon, this.onPressed}) : super(key: key);

  final IconData icon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: IconButton(
          onPressed:onPressed,
          icon: Icon(
            icon,
            size: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
