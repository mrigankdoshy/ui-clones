import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';
import 'package:snapchat/widgets/bitmoji.dart';

class Snap extends StatelessWidget {
  final String bitmoji;
  final String name;
  final String snapIcon;
  final String snapType;
  final String time;
  final String streak;
  final String emoji;

  const Snap({
    Key? key,
    required this.bitmoji,
    required this.name,
    required this.snapIcon,
    required this.snapType,
    required this.time,
    required this.streak,
    required this.emoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Bitmoji(image: bitmoji),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      Image.asset(
                        snapIcon,
                        height: 12,
                        width: 12,
                      ),
                      Text(
                        snapType,
                        style: TextStyle(
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          "•",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          fontFamily: "Metropolis",
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white.withOpacity(0.4),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          "•",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white.withOpacity(0.4),
                          ),
                        ),
                      ),
                      Container(
                        transform: Matrix4.translationValues(0.0, -5.0, 0.0),
                        child: Text(
                          "$streak${Emojis.fire}",
                          style: const TextStyle(
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Wrap(
              spacing: 24.0,
              children: [
                Container(
                  transform: Matrix4.translationValues(0.0, -4.0, 0.0),
                  child: Text(
                    emoji,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(
                  Icons.photo_camera_outlined,
                  color: Colors.white.withOpacity(0.7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
