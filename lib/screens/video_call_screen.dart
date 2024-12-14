import 'package:flutter/material.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final TextEditingController meetingIdController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool isAudioMuted = true;
  bool isVideoMuted = true;

  void _joinMeeting() {
    print('Joining meeting: Room ID: ${meetingIdController.text}, Name: ${nameController.text}, Audio Muted: $isAudioMuted, Video Muted: $isVideoMuted');
  }

  @override
  void dispose() {
    meetingIdController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join a meeting'),
      ),
      body: Column(
        children: [
          TextField(
            controller: meetingIdController,
            decoration: const InputDecoration(hintText: 'Room ID'),
          ),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(hintText: 'Name'),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: _joinMeeting,
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