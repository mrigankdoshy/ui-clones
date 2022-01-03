import 'package:flutter/material.dart';
import 'package:instagram/widgets/story.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 12.0,
            children: const [
              Story(
                image: "assets/profile.jpg",
                name: "Your Story",
                viewed: true,
              ),
              Story(
                image: "assets/person1.jpg",
                name: "ablaise",
                viewed: false,
              ),
              Story(
                image: "assets/person2.jpg",
                name: "jake_gonzalez",
                viewed: false,
              ),
              Story(
                image: "assets/person3.jpg",
                name: "michaela21",
                viewed: false,
              ),
              Story(
                image: "assets/person4.jpg",
                name: "emmanovak",
                viewed: false,
              ),
              Story(
                image: "assets/person5.jpg",
                name: "yoyoitsjo",
                viewed: false,
              ),
              Story(
                image: "assets/person6.jpg",
                name: "katiewalton",
                viewed: false,
              ),
              Story(
                image: "assets/person7.jpg",
                name: "its_ana",
                viewed: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
