import 'package:flutter/material.dart';
import 'package:spotify/widgets/album.dart';

class JumpBackIn extends StatelessWidget {
  const JumpBackIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "Jump Back In",
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
                  Album(
                      image: 'assets/all_saints.jpeg',
                      text: "Live At AllSaints \nStudios"),
                  Album(
                      image: 'assets/billie_eilish.jpeg',
                      text: "This is Billie Eilish"),
                  Album(image: 'assets/classics.jpeg', text: "Classics"),
                  Album(image: 'assets/dezi.png', text: "Dezi"),
                  Album(image: 'assets/saxophone.jpg', text: "Saxophone 🎷 "),
                ],
              ),
            )),
        const SizedBox(height: 30),
      ],
    );
  }
}
