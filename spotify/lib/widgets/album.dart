import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  final String image;
  final String text;

  const Album({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 120,
          width: 120,
          child: Image.asset(
            image,
            filterQuality: FilterQuality.high,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
