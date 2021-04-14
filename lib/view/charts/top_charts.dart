import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/widgets/appBar.dart';

class TopCharts extends StatefulWidget {
  TopCharts({Key key}) : super(key: key);

  @override
  _TopChartsState createState() => _TopChartsState();
}

class _TopChartsState extends State<TopCharts> {
  SvgIcons svgIcons = SvgIcons.instance;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: ('Top Charts'),
        actions: [
          CupertinoButton(child: svgIcons.downArrow, onPressed: () {}),
          CupertinoButton(child: svgIcons.share, onPressed: () {}),
          CupertinoButton(child: svgIcons.search, onPressed: () {}),
        ],
      ),
    );
  }
}
