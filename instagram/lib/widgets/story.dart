import 'package:flutter/material.dart';
import 'package:instagram/utils/colors.dart';
import 'package:instagram/widgets/picture.dart';

class Story extends StatelessWidget {
  final String image;
  final String name;
  final bool viewed;

  const Story(
      {Key? key, required this.image, required this.name, required this.viewed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        viewed
            ? Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[700],
                ),
                padding: const EdgeInsets.all(1.5),
                child: picture(image),
              )
            : Container(
                width: 70.0,
                height: 70.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: const LinearGradient(
                    colors: storyColors,
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                ),
                padding: const EdgeInsets.all(2.5),
                child: picture(image),
              ),
        const SizedBox(height: 6.0),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11.0,
          ),
        )
      ],
    );
  }
}
