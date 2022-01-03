import 'package:flutter/material.dart';
import 'package:instagram/utils/colors.dart';

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
                child: picture(),
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
                child: picture(),
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

  Widget picture() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.black,
      ),
      padding: const EdgeInsets.all(3.5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
        child: Image.asset(image),
      ),
    );
  }
}
