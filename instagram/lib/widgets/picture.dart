import 'package:flutter/material.dart';

Widget picture(String image) {
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
