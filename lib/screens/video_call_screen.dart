import 'package:flutter/material.dart';

class VideoCallScreen extends StatelessWidget {
  const VideoCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join a meeting'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(hintText: 'Room ID'),
          ),
          TextField(
            decoration: const InputDecoration(hintText: 'Name'),
          ),
        ],
      ),
    );
  }
}

