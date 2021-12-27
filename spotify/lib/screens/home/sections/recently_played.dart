import 'package:flutter/material.dart';
import 'package:spotify/widgets/album.dart';
import 'package:spotify/widgets/artist.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "Recently Played",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Wrap(
                spacing: 16,
                children: const [
                  Album(image: 'assets/mood.jpg', text: "Mood 💭"),
                  Album(image: 'assets/originals.jpg', text: "Originals"),
                  Album(
                      image: 'assets/imagine_dragons.jpeg',
                      text: "This is Imagine \nDragons"),
                  Album(
                      image: 'assets/high_voltage.jpeg', text: "High Voltage"),
                  Artist(image: 'assets/slash.jpeg', text: "Slash"),
                  Album(
                      image: 'assets/soft_pop_hits.jpeg',
                      text: "Soft Pop Hits"),
                  Album(
                      image: 'assets/acoustic_rock.jpeg',
                      text: "Acoustic Rock"),
                  Artist(image: 'assets/anuv_jain.jpeg', text: "Anuv Jain"),
                ],
              ),
            )),
        const SizedBox(height: 30),
      ],
    );
  }
}
