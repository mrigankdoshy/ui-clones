import 'package:flutter/material.dart';
import 'package:netflix/widgets/movie_show.dart';

class ContinueWatching extends StatelessWidget {
  const ContinueWatching({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 16.0,
            left: 16.0,
            right: 16.0,
            bottom: 8.0,
          ),
          child: Text(
            'Continue Watching for Mrigank',
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
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Wrap(
              spacing: 8.0,
              children: const [
                MovieShow(image: 'assets/seinfeld.png'),
                MovieShow(image: 'assets/narcos_mexico.jpg'),
                MovieShow(image: 'assets/muder_mystery.jpg'),
                MovieShow(image: 'assets/schitts_creek.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
