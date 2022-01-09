import 'package:flutter/material.dart';
import 'package:snapchat/screens/camera/camera.dart';
import 'package:snapchat/screens/chat/chat.dart';
import 'package:snapchat/screens/map/map.dart';
import 'package:snapchat/screens/spotlight/spotlight.dart';
import 'package:snapchat/screens/stories/stories.dart';
import 'package:snapchat/widgets/bottom_navigation.dart';
import 'package:snapchat/widgets/circular_icon.dart';
import 'package:snapchat/widgets/profile_icon.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int page = 1;
  late String title;
  late PageController control;

  @override
  void initState() {
    control = PageController(
      keepPage: true,
      initialPage: page,
    );
    title = "Chat";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            children: const [
              ProfileIcon(),
              SizedBox(width: 8.0),
              CircularIcon(icon: Icons.search),
            ],
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
              fontFamily: "Metropolis", fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: const [
                CircularIcon(icon: Icons.person_add),
                SizedBox(width: 8.0),
                CircularIcon(icon: Icons.more_horiz),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(
        page: page,
        controller: control,
      ),
      body: PageView(
        controller: control,
        onPageChanged: (newPage) {
          setState(() {
            page = newPage;
            title = getTitle(page);
          });
        },
        children: const [
          Map(),
          Chat(),
          Camera(),
          Stories(),
          Spotlight(),
        ],
      ),
    );
  }

  String getTitle(page) {
    switch (page) {
      case 0:
        return 'Map';
      case 1:
        return 'Chat';
      case 2:
        return 'Camera';
      case 3:
        return 'Stories';
      case 4:
        return 'Spotlight';
      default:
        return 'Chat';
    }
  }
}
