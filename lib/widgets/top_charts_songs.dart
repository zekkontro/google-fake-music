import 'package:flutter/material.dart';
import 'package:google_musics/models/song.dart';

class TopSongs extends StatelessWidget {
  final Song songs;

  const TopSongs({
    Key key,
    this.songs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List number = [1, 2, 3, 4, 5, 6, 7];
    return ListView.builder(
      itemCount: number.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            Text(
              number[index] + '.',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.w200, fontSize: 24),
            ),
            Image.asset(songs.image),
            Column(
              children: [
                Text(
                  songs.name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 20),
                ),
                Text(
                  songs.author,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 14),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
