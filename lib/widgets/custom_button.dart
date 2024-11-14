import 'package:flutter/material.dart';
import 'package:meeting_app/utils/colors.dart';

// A custom button widget that can be reused throughout the app.
// It takes in a required `text` for the button label and a required
// `onPressed` callback function to handle the button's press action.

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: ElevatedButton(
        onPressed: onPressed, // Sets the function to call when the button is pressed.
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: const Size(double.infinity, 50),
          side: const BorderSide(color: buttonColor),
        ),
      ),
    );
  }
}
