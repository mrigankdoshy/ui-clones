import 'package:flutter/material.dart';
import 'package:instagram/screens/home/body.dart';
import 'package:instagram/widgets/bottom_navigation.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/instagram.png',
          color: Colors.white,
          width: 130,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: const [
                ImageIcon(
                  AssetImage("assets/create.png"),
                  size: 28,
                ),
                SizedBox(width: 20.0),
                ImageIcon(
                  AssetImage("assets/heart.png"),
                  size: 28,
                ),
                SizedBox(width: 16.0),
                ImageIcon(
                  AssetImage("assets/dm.png"),
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
