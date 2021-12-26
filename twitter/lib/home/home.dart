import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter/tweets/tweets.dart';
import 'dart:math' as math;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141d26),
      appBar: AppBar(
        backgroundColor: const Color(0xff141d26),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.0),
              image: const DecorationImage(
                  image: AssetImage("assets/mrigank.jpeg")),
            ),
          ),
        ),
        title: Image.asset("assets/twitter.png", height: 25.0),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: const Icon(Icons.auto_awesome_outlined, size: 25.0),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/Four_dots.png"),
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline_rounded), label: ""),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Center(
          child: Icon(CupertinoIcons.add),
        ),
      ),
      body: ListView.builder(
        itemCount: tweets.length,
        itemBuilder: (BuildContext context, int index) {
          return tweets[index];
        },
      ),
    );
  }
}
