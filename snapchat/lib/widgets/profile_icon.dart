import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: const Color(0xFF171717),
      child: ClipOval(
        child: Image.asset(
          "assets/bitmoji/profile.png",
        ),
      ),
    );
  }
}
