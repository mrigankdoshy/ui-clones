import 'package:flutter/material.dart';
import 'package:netflix/widgets/movie_show.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);

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
            'My List',
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
                MovieShow(image: 'assets/witcher.jpg'),
                MovieShow(image: 'assets/better_call_saul.jpg'),
                MovieShow(image: 'assets/cobra_kai.jpg'),
                MovieShow(image: 'assets/el_camino.png'),
                MovieShow(image: 'assets/war_machine.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
