import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      backgroundColor: buttonColor,
      minimumSize: const Size(100, 50),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
    ),
    child: Text(text, style: const TextStyle(
      color: Colors.white,
    fontSize: 17,
    ),));
  }
}
