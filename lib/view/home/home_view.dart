import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/constant/color_constant.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/widgets/appBar.dart';
import 'package:google_musics/core/extension/context_extension.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  ColorConstants constants = ColorConstants.instance;
  SvgIcons svgIcons = SvgIcons.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 1.0,
      text: "Listen Now",
      actions: [
        CupertinoButton(child: svgIcons.broadcast, onPressed: () {}),
        CupertinoButton(child: svgIcons.search, onPressed: () {})
      ],
      height: context.sizeH(0.08),
    ));
  }
}
