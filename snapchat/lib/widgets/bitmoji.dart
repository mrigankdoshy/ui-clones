import 'package:flutter/material.dart';

class Bitmoji extends StatelessWidget {
  final String image;
  const Bitmoji({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: const Color(0xFF171717),
      child: ClipOval(
        child: Image.asset(image),
      ),
    );
  }
}
