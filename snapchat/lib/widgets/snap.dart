import 'package:flutter/material.dart';
import 'package:snapchat/widgets/bitmoji.dart';

class Snap extends StatelessWidget {
  final String bitmoji;
  final String name;
  final String snapIcon;
  const Snap({
    Key? key,
    required this.bitmoji,
    required this.name,
    required this.snapIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
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
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        snapIcon,
                        height: 12,
                        width: 12,
                      ),
                      Text(
                        "Delivered",
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
                        "2h",
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
                        transform: Matrix4.translationValues(0.0, -4.5, 0.0),
                        child: const Text(
                          "436🔥",
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: const [
              // Emoji
              // Camera
            ],
          )
        ],
      ),
    );
  }
}
