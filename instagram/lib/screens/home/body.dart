import 'package:flutter/material.dart';
import 'package:instagram/screens/home/sections/posts.dart';
import 'package:instagram/screens/home/sections/stories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Stories(),
          Posts(),
        ],
      ),
    );
  }
}
