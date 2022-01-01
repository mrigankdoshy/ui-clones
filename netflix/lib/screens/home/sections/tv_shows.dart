import 'package:flutter/material.dart';
import 'package:netflix/widgets/movie_show.dart';

class TvShows extends StatelessWidget {
  const TvShows({Key? key}) : super(key: key);

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
            'TV Shows',
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
                MovieShow(image: 'assets/better_call_saul_2.jpg'),
                MovieShow(image: 'assets/how_to_get_away_with_murder.jpg'),
                MovieShow(image: 'assets/lucifer.jpg'),
                MovieShow(image: 'assets/lupin.jpg'),
                MovieShow(image: 'assets/narcos.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
