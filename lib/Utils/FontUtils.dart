import 'package:flutter/cupertino.dart';
import 'package:ijas_portfolio_flutter/Utils/ColorUtils.dart';

class FontUtils {
  static TextStyle getMenuLabelStyle({Color color = ColorUtils.WHITE}) {
    return TextStyle(color: color, fontSize: 15);
  }

  static TextStyle getProfileName({Color color = ColorUtils.WHITE}) {
    return TextStyle(color: color, fontSize: 36, fontWeight: FontWeight.w600);
  }

  static TextStyle getProfileJobStyle({Color color = ColorUtils.FONT_GREY}) {
    return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.w300);
  }
}
