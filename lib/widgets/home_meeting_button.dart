import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meeting_app/utils/colors.dart';

class HomeMeetingButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  const HomeMeetingButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(16), // Changed from 20 to 16
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, // Changed from 8 to 10
                      color: Colors.black.withOpacity(0.06), // Changed opacity
                      offset: const Offset(0, 4)) // Changed offset
                ]),
            width: 60, // Changed from 65 to 60
            height: 60,  // Changed from 65 to 60
            child: Icon(
              icon,
              color: Colors.white,
              size: 30, // Changed from 32 to 30
            ),
          ),
          const SizedBox(
            height: 10, // Changed from 12 to 10
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.grey, // Changed color from grey to blueGrey
            ),
          )
        ],
      ),
    );
  }
}
