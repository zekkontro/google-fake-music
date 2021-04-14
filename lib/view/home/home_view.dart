import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/constant/color_constant.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/core/services/playlists.dart';
import 'package:google_musics/models/playlist.dart';
import 'package:google_musics/widgets/appBar.dart';
import 'package:google_musics/core/extension/context_extension.dart';
import 'package:google_musics/widgets/today_biggest_hits.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ColorConstants constants = ColorConstants.instance;
  SvgIcons svgIcons = SvgIcons.instance;
  PlaylistService service = PlaylistService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: context.sizeH(0.01),
            ),
            Text("It's Friday Night", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
            SizedBox(
              height: context.sizeH(0.005),
            ),
            Text(
              "Play something for...",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: context.sizeH(0.005),
            ),
            FutureBuilder(
              future: service.getPlaylists(),
              builder: (context, AsyncSnapshot<List<Playlist>> snapshot) {
                return CarouselSlider(
                    items: snapshot.data.map((data) {
                      return TodayBiggestHits(
                        playlist: data,
                      );
                    }).toList(),
                    options: CarouselOptions());
              },
            )
          ],
        )),
      ),
      appBar: CustomAppBar(
        text: "Listen Now",
        actions: [CupertinoButton(child: svgIcons.broadcast, onPressed: () {}), CupertinoButton(child: svgIcons.search, onPressed: () {})],
        height: context.sizeH(0.08),
      ),
    );
  }
}
