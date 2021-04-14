import 'package:flutter/material.dart';
import 'package:google_musics/constant/svg_icons.dart';

class TrAppBar extends StatelessWidget {
  const TrAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SvgIcons svgIcons = SvgIcons.instance;

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(icon: svgIcons.menu, onPressed: () {}),
          Text(
            'Top Charts',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          IconButton(icon: svgIcons.downArrow, onPressed: () {}),
          IconButton(icon: svgIcons.broadcast, onPressed: () {}),
          IconButton(icon: svgIcons.search, onPressed: () {}),
        ],
      ),
    );
  }
}
