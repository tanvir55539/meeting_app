import 'dart:math';

import 'package:flutter/material.dart';

import '../widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({super.key});




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                onPressed: (){
                  print('Creating a new meeting');

                },
                text: 'New Meeting',
                icon: Icons.videocam,
              ),
              HomeMeetingButton(
                onPressed: (){
                  print('joining a meeting using meeting screen');
                },
                text: 'Join Meeting',
                icon: Icons.add_box_rounded,
              ),
              // HomeMeetingButton(
              //   onPressed: () {},
              //   text: 'Scheduling',
              //   icon: Icons.calendar_today,
              // ),
            ],
          ),
        ),
        const Expanded(
          child: Center(
            child: Text(
              'Create/join meetings with just a click',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
