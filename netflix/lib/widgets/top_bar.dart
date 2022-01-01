import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Row(
        children: [
          const SizedBox(width: 24.0),
          Image.asset(
            'assets/netflix.png',
            height: 32.0,
          ),
          const Spacer(),
          const Icon(
            Icons.cast,
            size: 24.0,
            color: Colors.white,
          ),
          const SizedBox(width: 16.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(3.0),
            child: Image.asset(
              'assets/profile.png',
              height: 24.0,
            ),
          ),
          const SizedBox(width: 24.0),
        ],
      ),
    );
  }
}
