import 'package:emojis/emojis.dart';
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
              snapIcon: receivedWithoutAudio,
              snapType: "New Snap",
              time: "2m",
              streak: "436",
              emoji: Emojis.twoHearts,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person2.png",
              name: "Anna Hayes",
              snapIcon: receivedWithAudio,
              snapType: "New Snap",
              time: "6m",
              streak: "112",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person3.png",
              name: "Caroline Wellen",
              snapIcon: receivedChat,
              snapType: "New Chat",
              time: "12m",
              streak: "263",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person4.png",
              name: "Chris Agbowo",
              snapIcon: screenshotChat,
              snapType: "Screenshot",
              time: "21m",
              streak: "63",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person5.png",
              name: "Danny Reed",
              snapIcon: sentWithoutAudio,
              snapType: "Delivered",
              time: "44m",
              streak: "14",
              emoji: Emojis.smirkingFace,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person6.png",
              name: "Amira Caceres",
              snapIcon: viewedWithAudio,
              snapType: "Received",
              time: "52m",
              streak: "63",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person7.png",
              name: "Ishaan Malhotra",
              snapIcon: sentWithAudio,
              snapType: "Delivered",
              time: "1h",
              streak: "78",
              emoji: Emojis.birthdayCake,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person9.png",
              name: "Emily Kauffman",
              snapIcon: screenshotWithoutAudio,
              snapType: "Screenshot",
              time: "1h",
              streak: "177",
              emoji: Emojis.smilingFaceWithSunglasses,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person11.png",
              name: "Blake Waters",
              snapIcon: replayedWithoutAudio,
              snapType: "Replayed",
              time: "1h",
              streak: "119",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person12.png",
              name: "Logan Peters",
              snapIcon: viewedChat,
              snapType: "Received",
              time: "1h",
              streak: "100",
              emoji: Emojis.hundredPoints,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person2.png",
              name: "Sandra Whitman",
              snapIcon: replayedWithAudio,
              snapType: "Replayed",
              time: "2h",
              streak: "329",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person3.png",
              name: "Nicole Hostetler",
              snapIcon: viewedWithoutAudio,
              snapType: "Received",
              time: "2h",
              streak: "29",
              emoji: Emojis.hourglassDone,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person1.png",
              name: "Michael Miller",
              snapIcon: openedChat,
              snapType: "Opened",
              time: "3h",
              streak: "12",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person6.png",
              name: "Carol Reiley",
              snapIcon: screenshotWithAudio,
              snapType: "Screenshot",
              time: "3h",
              streak: "72",
              emoji: Emojis.smilingFaceWithSunglasses,
            ),
            Snap(
              bitmoji: "assets/bitmoji/person4.png",
              name: "Maron Debkeya",
              snapIcon: viewedChat,
              snapType: "Received",
              time: "5h",
              streak: "7",
              emoji: Emojis.smilingFaceWithSmilingEyes,
            ),
          ],
        ),
      ),
    );
  }
}
