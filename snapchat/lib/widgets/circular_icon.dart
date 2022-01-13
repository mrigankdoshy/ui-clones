import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final IconData icon;
  const CircularIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color(0xFF171717),
      radius: 20,
      child: Icon(
        icon,
        color: Colors.white,
        size: 21,
      ),
    );
  }
}
