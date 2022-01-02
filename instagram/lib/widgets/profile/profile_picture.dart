import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String path;
  const ProfilePicture({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0,
      width: 25.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(image: AssetImage(path)),
      ),
    );
  }
}
