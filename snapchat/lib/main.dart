import 'package:flutter/material.dart';
import 'package:snapchat/screens/chats/chats.dart';

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
        canvasColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Metropolis',
      ),
      home: const Chats(),
    );
  }
}
