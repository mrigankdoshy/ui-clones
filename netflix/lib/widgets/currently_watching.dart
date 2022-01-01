import 'package:flutter/material.dart';
import 'package:netflix/widgets/movie_show.dart';

class CurrentlyWatching extends StatelessWidget {
  final String image;
  final double length;

  const CurrentlyWatching({Key? key, required this.image, required this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MovieShow(image: image),
        Align(
          alignment: Alignment.bottomLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 3,
                    width: 110,
                    color: const Color(0xFF383838),
                  ),
                  Container(
                    height: 3,
                    width: length,
                    color: const Color(0xFFE50914),
                  ),
                ],
              ),
              Container(
                height: 30,
                width: 110,
                color: const Color(0xFF191919),
                padding: const EdgeInsets.only(left: 4, right: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.info_outline,
                      color: Colors.grey,
                      size: 20,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                      size: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
