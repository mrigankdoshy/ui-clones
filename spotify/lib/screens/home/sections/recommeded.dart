import 'package:flutter/material.dart';
import 'package:spotify/widgets/album.dart';

class Recommended extends StatelessWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "Based on your recent listening",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 24),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Wrap(
                spacing: 16,
                children: const [
                  Album(
                      image: 'assets/piano_ballads.jpeg',
                      text: "Piano Ballads"),
                  Album(
                      image: 'assets/appetite_for_destruction.jpeg',
                      text: "Appetite For \nDestruction"),
                  Album(image: 'assets/zac.jpeg', text: "Spotify Singles"),
                  Album(image: 'assets/equals.jpeg', text: "="),
                  Album(image: 'assets/continuum.jpeg', text: "Continuum"),
                  Album(
                      image: 'assets/highway_to_hell.jpeg',
                      text: "Highway To Hell"),
                  Album(
                      image: 'assets/bruno_major.jpeg',
                      text: "A Song For Every \nMoon"),
                ],
              ),
            )),
        const SizedBox(height: 30),
      ],
    );
  }
}
