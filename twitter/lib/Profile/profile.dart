import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String path;
  const Profile({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        image: DecorationImage(image: AssetImage(path)),
      ),
    );
  }
}
