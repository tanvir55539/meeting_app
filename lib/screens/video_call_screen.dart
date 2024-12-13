import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  bool isAudioMuted = true;
  bool isVideoMuted = true;

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
          const SizedBox(height: 20),
          InkWell(
            onTap: () {},
            child: const Text('Join'),
          ),
          const SizedBox(height: 20),
          SwitchListTile(
            title: const Text('Mute Audio'),
            value: isAudioMuted,
            onChanged: (val) {
              setState(() {
                isAudioMuted = val;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Mute Video'),
            value: isVideoMuted,
            onChanged: (val) {
              setState(() {
                isVideoMuted = val;
              });
            },
          ),
        ],
      ),
    );
  }
}