import 'package:flutter/material.dart';
import 'package:spotify/screens/home/sections/albums_overview.dart';
import 'package:spotify/screens/home/sections/jump_back_in.dart';
import 'package:spotify/screens/home/sections/recently_played.dart';
import 'package:spotify/screens/home/sections/recommeded.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF31256B), Color(0xFF191414)],
          stops: [
            0.05,
            0.4,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            AlbumsOverview(),
            RecentlyPlayed(),
            Recommended(),
            JumpBackIn(),
          ],
        ),
      ),
    );
  }
}
