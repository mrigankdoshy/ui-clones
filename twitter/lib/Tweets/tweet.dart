import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
  final String username;
  final String name;
  final String timeAgo;
  final String text;
  final String comments;
  final String retweets;
  final String likes;

  const Tweet(
    {Key? key, 
    required this.username,
    required this.name,
    required this.timeAgo,
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
            children: [
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0),
              ),
              Text(
                " @$username · $timeAgo",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5), fontSize: 16.0),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                CupertinoIcons.chat_bubble,
                size: 20.0,
                color: Colors.white.withOpacity(0.5),
              ),
              const SizedBox(width: 60.0),
              Icon(
                CupertinoIcons.refresh,
                size: 20.0,
                color: Colors.white.withOpacity(0.5),
              ),
              const SizedBox(width: 60.0),
              Icon(
                CupertinoIcons.heart,
                size: 20.0,
                color: Colors.white.withOpacity(0.5),
              ),
              const SizedBox(width: 60.0),
              Icon(
                CupertinoIcons.share,
                size: 20.0,
                color: Colors.white.withOpacity(0.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}