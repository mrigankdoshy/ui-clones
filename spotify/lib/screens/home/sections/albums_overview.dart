import 'package:flutter/material.dart';
import 'package:spotify/widgets/actions.dart';
import 'package:spotify/widgets/album_tile.dart';

class AlbumsOverview extends StatelessWidget {
  const AlbumsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Good afternoon",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                ActionsHeader()
              ],
            )),
        const SizedBox(height: 8),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AlbumTile(
                    image: 'assets/originals.jpg',
                    text: "Originals",
                  ),
                  AlbumTile(
                    image: 'assets/mood.jpg',
                    text: "Mood 💭",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AlbumTile(
                    image: 'assets/rock.jpg',
                    text: "Rock / Metal 🎸 ",
                  ),
                  AlbumTile(
                    image: 'assets/dezi.png',
                    text: "Dezi",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AlbumTile(
                    image: 'assets/midnight_drive.jpg',
                    text: "Midnight Drive",
                  ),
                  AlbumTile(
                    image: 'assets/classics.jpeg',
                    text: "Classics",
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
