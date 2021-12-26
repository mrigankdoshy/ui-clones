import 'package:flutter/material.dart';
import 'package:twitter/Profile/profile.dart';

import 'tweet.dart';

class Card extends StatelessWidget {
  final String avatar;
  final String username;
  final String name;
  final String created;
  final String text;
  final String comments;
  final String retweets;
  final String likes;

  const Card(
      {Key? key,
      required this.avatar,
      required this.username,
      required this.name,
      required this.created,
      required this.text,
      required this.comments,
      required this.retweets,
      required this.likes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(flex: 1, child: Profile(path: avatar)),
              Flexible(
                flex: 5,
                child: Tweet(
                    username: username,
                    name: name,
                    created: created,
                    text: text,
                    comments: comments,
                    retweets: retweets,
                    likes: likes),
              ),
            ],
          ),
        ),
        Divider(thickness: 1, color: Colors.white.withOpacity(0.2)),
      ],
    );
  }
}
