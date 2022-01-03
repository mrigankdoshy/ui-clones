import 'package:flutter/material.dart';
import 'package:instagram/utils/colors.dart';
import 'package:instagram/widgets/picture.dart';

class Post extends StatelessWidget {
  final String profilePicture;
  final String username;
  final String content;
  final String caption;
  final String likedBy;
  final String commentCount;
  final String time;

  const Post({
    Key? key,
    required this.username,
    required this.profilePicture,
    required this.content,
    required this.caption,
    required this.likedBy,
    required this.commentCount,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 12.0, bottom: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
                        colors: storyColors,
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
                    ),
                    padding: const EdgeInsets.all(1.7),
                    child: picture(content),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    username,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            content,
            filterQuality: FilterQuality.high,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 12.0, right: 12.0, bottom: 8.0),
              child: Row(
                children: [
                  const ImageIcon(
                    AssetImage('assets/heart.png'),
                    color: Colors.white,
                    size: 30.0,
                  ),
                  const SizedBox(width: 16.0),
                  const ImageIcon(
                    AssetImage('assets/comment.png'),
                    color: Colors.white,
                    size: 24.0,
                  ),
                  const SizedBox(width: 16.0),
                  Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.identity()
                      ..rotateZ(20 * 3.1415927 / 180),
                    child: const ImageIcon(
                      AssetImage("assets/dm.png"),
                      color: Colors.white,
                      size: 28.0,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.bookmark_border,
              color: Colors.white,
              size: 28.0,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 4.0, left: 12.0, right: 12.0, bottom: 0.0),
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.white,
              ),
              children: [
                const TextSpan(text: 'Liked by '),
                TextSpan(
                  text: likedBy,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: ' and '),
                const TextSpan(
                  text: 'others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 12.0, right: 12.0, bottom: 8.0),
          child: Text(
            caption,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 8.0),
          child: Text(
            "View all $commentCount comments",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
          child: Text(
            "$time ago",
            style: TextStyle(
              color: Colors.white.withOpacity(0.75),
              fontSize: 11.0,
            ),
          ),
        )
      ],
    );
  }
}
