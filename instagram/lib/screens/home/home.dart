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
              children: [
                const ImageIcon(
                  AssetImage("assets/create.png"),
                  size: 28,
                ),
                const SizedBox(width: 20.0),
                const ImageIcon(
                  AssetImage("assets/heart.png"),
                  size: 28,
                ),
                const SizedBox(width: 16.0),
                Transform(
                  alignment: FractionalOffset.center,
                  transform: Matrix4.identity()..rotateZ(20 * 3.1415927 / 180),
                  child: const ImageIcon(
                    AssetImage("assets/dm.png"),
                    size: 28,
                  ),
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
