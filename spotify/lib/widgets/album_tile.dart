import 'package:flutter/material.dart';

class AlbumTile extends StatelessWidget {
  final String image;
  final String text;

  const AlbumTile({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 194,
      height: 55,
      decoration: BoxDecoration(
        color: const Color(0xFF313132),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Row(
          children: [
            SizedBox(
              width: 55,
              height: 55,
              child: Image.asset(
                image,
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
