import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile_picture.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage("assets/instagram-reels.png"),
            size: 22,
          ),
          label: "Reels",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          label: "Shopping",
        ),
        BottomNavigationBarItem(
          icon: ProfilePicture(path: 'assets/profile.jpg'),
          label: "Account",
        ),
      ],
    );
  }
}
