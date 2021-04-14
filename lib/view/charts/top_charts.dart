import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/widgets/appBar.dart';
import 'package:google_musics/core/extension/context_extension.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        height: context.sizeH(0.08),
        text: ('Top Charts'),
        actions: [
          CupertinoButton(child: svgIcons.downArrow, onPressed: () {}),
          CupertinoButton(child: svgIcons.shareWhite, onPressed: () {}),
          CupertinoButton(child: svgIcons.search, onPressed: () {}),
        ],
      ),
    );
  }
}
