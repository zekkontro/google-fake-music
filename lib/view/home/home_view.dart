import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_musics/constant/color_constant.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/core/services/playlists.dart';
import 'package:google_musics/core/services/profile_service.dart';
import 'package:google_musics/models/playlist.dart';
import 'package:google_musics/models/profile.dart';
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
  Profile profservice = Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: context.sizeH(0.01)),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("It's Friday Night", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
                Text("Play something for...", style: TextStyle(color: Colors.grey[600], fontSize: 18)),
              ],
            ),
          ),
          SizedBox(height: context.sizeH(0.005)),
          FutureBuilder(
            future: service.getPlaylists(),
            builder: (context, AsyncSnapshot<List<Playlist>> snapshot) {
              return CarouselSlider(
                  items: snapshot.data.map((data) {
                    return TodayBiggestHits(
                      playlist: data,
                    );
                  }).toList(),
                  options: CarouselOptions(
                    viewportFraction: 0.5,
                    height: context.sizeH(0.26),
                  ));
            },
          ),
          SizedBox(height: context.sizeH(0.05)),
          Padding(
            padding: EdgeInsets.all(24),
            child: Text("Recommended for you", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25)),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: ListTile(
                title: Text("I'm feeling lucky radio", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20)),
                subtitle: Text("Based on your music taste", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400)),
                trailing: Container(
                  width: context.sizeW(0.15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/utilities/random-icon.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: context.sizeH(0.05)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      height: context.sizeH(0.5),
                      width: context.sizeW(0.5),
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/profiles/profile-1.png"))),
                    ),
                  ],
                ),
              ),
              width: double.infinity,
              height: context.sizeH(0.25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/profile-backgrounds/profile-1.png"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.redAccent.withOpacity(0.9), BlendMode.multiply))),
            ),
          ),
          SizedBox(height: context.sizeH(0.05)),
        ],
      )),
      appBar: CustomAppBar(
        text: "Listen Now",
        actions: [CupertinoButton(child: svgIcons.broadcast, onPressed: () {}), CupertinoButton(child: svgIcons.search, onPressed: () {})],
        height: context.sizeH(0.08),
      ),
    );
  }
}
