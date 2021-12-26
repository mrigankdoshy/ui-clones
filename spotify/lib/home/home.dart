import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      appBar: AppBar(
        backgroundColor: const Color(0xFF191919),
        elevation: 0,
      ),
    );
  }
}