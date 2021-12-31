import 'package:flutter/material.dart';

class OptionsBar extends StatelessWidget {
  const OptionsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'TV Shows',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 42.0),
          Text(
            'Movies',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 42.0),
          Text(
            'Categories',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(
            Icons.arrow_drop_down,
            color: Colors.white,
            size: 24.0,
          )
        ],
      ),
    );
  }
}
