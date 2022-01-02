import 'package:flutter/material.dart';
import 'package:instagram/widgets/story.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            spacing: 16.0,
            children: const [
              Story(
                image: "assets/users/person1.jpg",
                name: "person1",
              ),
              Story(
                image: "assets/users/person2.jpg",
                name: "person2",
              ),
              Story(
                image: "assets/users/person3.jpg",
                name: "person3",
              ),
              Story(
                image: "assets/users/person4.jpg",
                name: "person4",
              ),
              Story(
                image: "assets/users/person5.jpg",
                name: "person5",
              ),
              Story(
                image: "assets/users/person6.jpg",
                name: "person6",
              ),
              Story(
                image: "assets/users/person7.jpg",
                name: "person7",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
