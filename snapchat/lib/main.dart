import 'package:flutter/material.dart';
import 'package:snapchat/screens/home.dart';

void main() {
  runApp(const Snapchat());
}

class Snapchat extends StatelessWidget {
  const Snapchat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: const Color(0xFF0D0D0D),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Metropolis',
      ),
      home: const Home(),
    );
  }
}
