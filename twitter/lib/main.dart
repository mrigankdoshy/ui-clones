import 'package:flutter/material.dart';

import 'Home/HomePage.dart';

void main() {
  runApp(const TwitterUI());
}

class TwitterUI extends StatelessWidget {
  const TwitterUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}