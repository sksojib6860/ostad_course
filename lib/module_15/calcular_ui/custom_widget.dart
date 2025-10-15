import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  String text;
  Color? buttonColor;
  final VoidCallback onPressed;

  buttonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            backgroundColor: buttonColor,
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
