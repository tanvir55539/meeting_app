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
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(0, 3))
                ]),
            width: 65,
            height: 65,
            child: Icon(
              icon,
              color: Colors.white,
              size: 32,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}
