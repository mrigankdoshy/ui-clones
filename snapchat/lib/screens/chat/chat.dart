import 'package:flutter/material.dart';
import 'package:snapchat/utils/snap_icon.dart';
import 'package:snapchat/widgets/snap.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0D0D0D),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Snap(
              bitmoji: "assets/bitmoji/person1.png",
              name: "James Mahoney",
              snapIcon: sentWithoutAudio,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person1.png",
              name: "James Mahoney",
              snapIcon: sentWithoutAudio,
            ),
          ],
        ),
      ),
    );
  }
}
