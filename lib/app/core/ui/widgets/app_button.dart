import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final bool lightButton;

  AppButton({
    required this.label,
    required this.onPressed,
    this.lightButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: lightButton ? Colors.grey.shade400 : null,
        ),
        child: Text(
          label,
          style: TextStyle(
            color: lightButton ? Colors.black : null,
          ),
        ),
      ),
    );
  }
}