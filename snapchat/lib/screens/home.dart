import 'package:flutter/material.dart';
import 'package:snapchat/screens/camera/camera.dart';
import 'package:snapchat/screens/chats/chats.dart';
import 'package:snapchat/screens/map/map.dart';
import 'package:snapchat/screens/spotlight/spotlight.dart';
import 'package:snapchat/screens/stories/stories.dart';
import 'package:snapchat/widgets/bottom_navigation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int page = 1;
  late PageController control;

  @override
  void initState() {
    control = PageController(
      keepPage: true,
      initialPage: page,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        page: page,
        controller: control,
      ),
      body: PageView(
        controller: control,
        onPageChanged: (newPage) {
          setState(() {
            page = newPage;
          });
        },
        children: const [
          Map(),
          Chats(),
          Camera(),
          Stories(),
          Spotlight(),
        ],
      ),
    );
  }
}
