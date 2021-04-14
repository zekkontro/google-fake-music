import 'package:flutter_svg/flutter_svg.dart';

class SvgIcons {
  static SvgIcons instance = SvgIcons._init();

  SvgIcons._init();

  SvgPicture addToLibary = _returnSVG("add-to-libary");
  SvgPicture broadcast = _returnSVG("broadcast");
  SvgPicture downArrow = _returnSVG("down-arrow");
  SvgPicture menu = _returnSVG("menu");
  SvgPicture play = _returnSVG("play");
  SvgPicture search = _returnSVG("search");
  SvgPicture share = _returnSVG("share");
}

SvgPicture _returnSVG(String svgPath) {
  return SvgPicture.asset("assets/svg/" + svgPath + ".svg");
}
