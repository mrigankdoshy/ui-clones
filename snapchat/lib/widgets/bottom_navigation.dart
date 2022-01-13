import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int page;
  final PageController controller;

  const BottomNavigation({
    Key? key,
    required this.page,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: _getColor()),
      unselectedIconTheme: const IconThemeData(color: Colors.white60),
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: page,
      onTap: (index) {
        controller.animateToPage(index,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutSine);
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.place_outlined),
          label: "Map",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mode_comment_outlined),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_camera_outlined),
          label: "Camera",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group_outlined),
          label: "Stories",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_arrow_outlined),
          label: "Spotlight",
        ),
      ],
    );
  }

  Color _getColor() {
    switch (page) {
      case 0:
        return const Color(0xFF4ABA16);
      case 1:
        return const Color(0xFF3CB2E2);
      case 2:
        return const Color(0xFFFFFC00);
      case 3:
        return const Color(0xFF9B55A0);
      case 4:
        return const Color(0xFFE92754);
      default:
        return const Color(0xFF3CB2E2);
    }
  }
}
