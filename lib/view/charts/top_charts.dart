import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/core/extension/context_extension.dart';
import 'package:google_musics/widgets/transparent_app_bar.dart';

class TopCharts extends StatefulWidget {
  TopCharts({Key key}) : super(key: key);

  @override
  _TopChartsState createState() => _TopChartsState();
}

class _TopChartsState extends State<TopCharts> {
  SvgIcons svgIcons = SvgIcons.instance;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Stack(
          children: [
            buildContainer(context),
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 10, right: 10),
              child: buildCard(context),
            ),
            TrAppBar(),
          ],
        ),
      ),
    );
  }

  Column buildContainer(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/profile-backgrounds/background-image.png'),
        ),
      ],
    );
  }

  Card buildCard(BuildContext context) {
    return Card(
      child: Column(
        children: [
          buildTopText(context),
          SizedBox(
            height: 20.0,
          ),
          buildTopSongs(),
        ],
      ),
    );
  }

  Container buildTopText(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      width: context.sizeW(1),
      height: context.sizeH(0.05),
      child: Text(
        'SUBSCRIPE TO PLAY ANY SONG OR ALBUM',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Container buildTopSongs() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Text(
        'Top Songs',
        textAlign: TextAlign.left,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
    );
  }
}

 /*appBar: CustomAppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        height: context.sizeH(0.05),
        text: ('Top Charts'),
        actions: [
          CupertinoButton(child: svgIcons.downArrow, onPressed: () {}),
          CupertinoButton(child: svgIcons.shareWhite, onPressed: () {}),
          CupertinoButton(child: svgIcons.search, onPressed: () {}),
        ],
      ),*/
