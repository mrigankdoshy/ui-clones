import 'package:flutter/material.dart';

class CurrentlyWatching extends StatelessWidget {
  final String image;
  final double length;

  const CurrentlyWatching({Key? key, required this.image, required this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150.0,
          width: 110.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ),
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
                    color: Colors.red,
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
