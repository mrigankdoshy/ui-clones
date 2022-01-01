import 'package:flutter/material.dart';
import 'package:netflix/widgets/movie_show.dart';

class WatchItAgain extends StatelessWidget {
  const WatchItAgain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 16.0,
            left: 8.0,
            right: 8.0,
            bottom: 8.0,
          ),
          child: Text(
            'Watch It Again',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Wrap(
              spacing: 8.0,
              children: const [
                MovieShow(image: 'assets/6underground.jpg'),
                MovieShow(image: 'assets/breaking_bad.jpg'),
                MovieShow(image: 'assets/war_dogs.jpg'),
                MovieShow(image: 'assets/new_girl.jpg'),
                MovieShow(image: 'assets/cobra_kai.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
