import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/core/extension/context_extension.dart';
import 'package:google_musics/models/playlist.dart';

class TodayBiggestHits extends StatelessWidget {
  final Playlist playlist;
  const TodayBiggestHits({Key key, this.playlist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Image.asset(playlist.image),
          SizedBox(
            height: 15,
          ),
          Text(
            playlist.name,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
          )
        ],
      ),
    );
  }
}
