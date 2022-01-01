import 'package:flutter/material.dart';
import 'package:netflix/widgets/currently_watching.dart';
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
            left: 8.0,
            right: 8.0,
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
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Wrap(
              spacing: 8.0,
              children: const [
                CurrentlyWatching(
                  image: 'assets/seinfeld.png',
                  length: 40,
                ),
                CurrentlyWatching(
                  image: 'assets/muder_mystery.jpg',
                  length: 70,
                ),
                CurrentlyWatching(
                  image: 'assets/schitts_creek.jpg',
                  length: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
