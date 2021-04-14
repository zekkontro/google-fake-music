import 'package:flutter/material.dart';
import 'package:google_musics/core/extension/context_extension.dart';
import 'package:google_musics/models/playlist.dart';

class TodayBiggestHits extends StatelessWidget {
  final Playlist playlist;
  const TodayBiggestHits({Key key, this.playlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.sizeW(0.40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Container(
            height: context.sizeH(0.20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                  image: AssetImage(playlist.image), fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 15),
          Text(
            playlist.name,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
          )
        ],
      ),
    );
  }
}
