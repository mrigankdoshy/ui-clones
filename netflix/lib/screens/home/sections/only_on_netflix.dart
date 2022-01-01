import 'package:flutter/material.dart';
import 'package:netflix/widgets/netflix_exclusive.dart';

class OnlyOnNetflix extends StatelessWidget {
  const OnlyOnNetflix({Key? key}) : super(key: key);

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
            'Only on Netflix',
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
                NetflixExclusive(image: 'assets/narcos_mexico.jpg'),
                NetflixExclusive(image: 'assets/money_heist.jpg'),
                NetflixExclusive(image: 'assets/house_of_cards.jpg'),
                NetflixExclusive(image: 'assets/iglesias.jpg'),
                NetflixExclusive(image: 'assets/social_dilemma.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
