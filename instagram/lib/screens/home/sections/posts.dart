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
          content: 'assets/post1.jpg',
          caption: "I guess this is it...",
          likedBy: "katiewalton",
          commentCount: "24",
          time: "21 minutes",
        ),
        SizedBox(height: 16),
        Post(
          username: 'yoyoitsjo',
          profilePicture: 'assets/person5.jpg',
          content: 'assets/post2.jpg',
          caption:
              "After three months of non-stop travel, I'm taking this week for me, myself and I. Time to recharge, relax and unwind",
          likedBy: "drewcasey",
          commentCount: "33",
          time: "42 minutes",
        ),
        SizedBox(height: 16),
        Post(
          username: 'jake_gozalez',
          profilePicture: 'assets/person2.jpg',
          content: 'assets/post3.jpg',
          caption: "Cappadocia, you make my heart a-float-er",
          likedBy: "katiewalton",
          commentCount: "12",
          time: "17 minutes",
        ),
        SizedBox(height: 16),
        Post(
          username: 'its_ana',
          profilePicture: 'assets/person7.jpg',
          content: 'assets/post5.jpg',
          caption: "Mood",
          likedBy: "smithysmith",
          commentCount: "6",
          time: "13 minutes",
        ),
      ],
    );
  }
}
