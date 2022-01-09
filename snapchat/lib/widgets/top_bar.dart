import 'package:flutter/material.dart';
import 'package:snapchat/widgets/circular_icon.dart';
import 'package:snapchat/widgets/profile_icon.dart';

class TopBar extends StatelessWidget {
  final int page;
  final String title;
  const TopBar({
    Key? key,
    required this.page,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
