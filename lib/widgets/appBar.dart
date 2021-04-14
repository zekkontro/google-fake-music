import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_musics/constant/color_constant.dart';
import 'package:google_musics/constant/svg_icons.dart';
import 'package:google_musics/core/base/base_state.dart';

class CustomAppBar extends StatelessWidget
    with PreferredSizeWidget
    implements BaseState {
  final double height;

  CustomAppBar({this.height});

  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  ColorConstants colorConstants = ColorConstants.instance;

  @override
  SvgIcons svgIcons = SvgIcons.instance;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: svgIcons.menu,
          onPressed: () {
            debugPrint("menu opened");
          }),
      backgroundColor: Theme.of(context).primaryColor,
      title: Text("Listen Now"),
      actions: [
        CupertinoButton(child: svgIcons.broadcast, onPressed: () {}),
        CupertinoButton(child: svgIcons.search, onPressed: () {})
      ],
    );
  }
}
