import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter/Tweets/tweets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1e252f),
      appBar: AppBar(
        backgroundColor: const Color(0xff1e252f),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.0),
              image: const DecorationImage(image: AssetImage("assets/mrigank.jpeg")),
            ),
          ),
        ),
        title: Image.asset("assets/twitter.png", height: 30.0),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.star_border_outlined, size: 30.0),
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
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.mail), label: ""),
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