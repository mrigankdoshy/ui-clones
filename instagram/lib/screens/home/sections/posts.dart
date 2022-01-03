import 'package:flutter/material.dart';
import 'package:instagram/widgets/post.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Post(
          username: 'emmanovak',
          profilePicture: 'assets/person4.jpg',
          content: 'assets/person4.jpg',
          caption: "Beautiful day",
          likedBy: "katiewalton",
          commentCount: "24",
          time: "21 minutes",
        ),
        SizedBox(height: 16),
        Post(
          username: 'yoyoitsjo',
          profilePicture: 'assets/person5.jpg',
          content: 'assets/person5.jpg',
          caption: "Beautiful day",
          likedBy: "katiewalton",
          commentCount: "24",
          time: "21 minutes",
        ),
        SizedBox(height: 16),
        Post(
          username: 'emmanovak',
          profilePicture: 'assets/person4.jpg',
          content: 'assets/person4.jpg',
          caption: "Beautiful day",
          likedBy: "katiewalton",
          commentCount: "24",
          time: "21 minutes",
        ),
      ],
    );
  }
}
