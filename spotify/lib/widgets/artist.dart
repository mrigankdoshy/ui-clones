import 'package:flutter/material.dart';

class Artist extends StatelessWidget {
  final String image;
  final String text;

  const Artist({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(90),
            child: Image.asset(
              image,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        const SizedBox(height: 16.0),
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
