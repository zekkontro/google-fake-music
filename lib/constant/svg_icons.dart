import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcons {
  static SvgIcons instance = SvgIcons._init();

  SvgIcons._init();

  SvgPicture addToLibary = _returnSVG("add-to-libary", Colors.black);
  SvgPicture addToLibaryWhite = _returnSVG("add-to-libary", Colors.white);
  SvgPicture broadcast = _returnSVG("broadcast", Colors.white);
  SvgPicture downArrow = _returnSVG("down-arrow", Colors.white);
  SvgPicture menu = _returnSVG("menu", Colors.white);
  SvgPicture play = _returnSVG("play", Colors.white);
  SvgPicture search = _returnSVG("search", Colors.white);
  SvgPicture share = _returnSVG("share", Colors.black);
  SvgPicture shareWhite = _returnSVG("share", Colors.white);
}

SvgPicture _returnSVG(String svgPath, Color color) {
  return SvgPicture.asset(
    "assets/svg/" + svgPath + ".svg",
    color: color,
  );
}
