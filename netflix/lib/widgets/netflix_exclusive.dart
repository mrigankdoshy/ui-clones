import 'package:flutter/material.dart';

class NetflixExclusive extends StatelessWidget {
  final String image;

  const NetflixExclusive({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290.0,
      width: 160.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
