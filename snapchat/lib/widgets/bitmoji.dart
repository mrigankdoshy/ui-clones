import 'package:flutter/material.dart';

class Bitmoji extends StatelessWidget {
  final String image;
  const Bitmoji({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      height: 60,
      width: 60,
    );
  }
}
