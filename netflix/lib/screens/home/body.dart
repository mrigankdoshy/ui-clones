import 'package:flutter/material.dart';
import 'package:netflix/screens/home/sections/featured.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Featured(),
        ],
      ),
    );
  }
}
