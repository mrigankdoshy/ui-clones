import 'package:flutter/material.dart';

class MovieShow extends StatelessWidget {
  final String image;

  const MovieShow({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      width: 110.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
