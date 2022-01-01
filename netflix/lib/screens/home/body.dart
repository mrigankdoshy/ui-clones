import 'package:flutter/material.dart';
import 'package:netflix/screens/home/sections/continue_watching.dart';
import 'package:netflix/screens/home/sections/featured.dart';
import 'package:netflix/screens/home/sections/my_list.dart';
import 'package:netflix/screens/home/sections/only_on_netflix.dart';
import 'package:netflix/screens/home/sections/tv_shows.dart';
import 'package:netflix/screens/home/sections/watch_it_again.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Featured(),
          ContinueWatching(),
          MyList(),
          OnlyOnNetflix(),
          WatchItAgain(),
          TvShows(),
        ],
      ),
    );
  }
}
