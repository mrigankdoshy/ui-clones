import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  final String username;
  final String name;
  final String created;
  final String text;
  final String comments;
  final String retweets;
  final String likes;

  const Tweet(
      {Key? key,
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
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                  Text(
                    " @$username · $created",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 16.0),
                  ),
                ],
              ),
              Icon(
                Icons.more_horiz,
                size: 16.0,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16.0),
          SizedBox(
            width: 280,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                tweetIcons(CupertinoIcons.chat_bubble, comments),
                tweetIcons(CupertinoIcons.arrow_2_squarepath, retweets),
                tweetIcons(CupertinoIcons.heart, likes),
                tweetIcons(CupertinoIcons.share, ""),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget tweetIcons(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 16.0,
          color: Colors.white.withOpacity(0.5),
        ),
        Container(
          margin: const EdgeInsets.all(6.0),
          child: Text(
            text,
            style:
                TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 14.0),
          ),
        ),
      ],
    );
  }
}
